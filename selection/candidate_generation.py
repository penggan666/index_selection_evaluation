import itertools
import logging

from .index import Index


def candidates_per_query(workload, max_index_width, candidate_generator):
    candidates = []

    for query in workload.queries:
        candidates.append(candidate_generator(query, max_index_width))

    return candidates


def syntactically_relevant_indexes(query, max_index_width):
    # "SAEFIS" or "BFI" see paper linked in DB2Advis algorithm
    # This implementation is "BFI" and uses all syntactically relevant indexes.
    columns = query.columns
    logging.debug(f"{query}")
    logging.debug(f"Indexable columns: {len(columns)}")

    indexable_columns_per_table = {}
    for column in columns:
        if column.table not in indexable_columns_per_table:
            indexable_columns_per_table[column.table] = set()
        indexable_columns_per_table[column.table].add(column)

    possible_column_combinations = set()
    for table in indexable_columns_per_table:
        columns = indexable_columns_per_table[table]
        for index_length in range(1, max_index_width + 1):
            # 得到所有单列索引以及单列索引关于max_index_width的全排列
            possible_column_combinations |= set(
                itertools.permutations(columns, index_length)
            )

    logging.debug(f"Potential indexes: {len(possible_column_combinations)}")
    return [Index(p) for p in possible_column_combinations]
