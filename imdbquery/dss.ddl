CREATE TABLE aka_name (
    id integer NOT NULL,
    person_id integer NOT NULL,
    name nvarchar(max),
    imdb_index nvarchar(3),
    name_pcode_cf nvarchar(11),
    name_pcode_nf nvarchar(11),
    surname_pcode nvarchar(11),
    md5sum nvarchar(65)
);

CREATE TABLE aka_title (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    title nvarchar(max),
    imdb_index nvarchar(4),
    kind_id integer NOT NULL,
    production_year integer,
    phonetic_code nvarchar(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    note nvarchar(72),
    md5sum nvarchar(32)
);

CREATE TABLE cast_info (
    id integer NOT NULL,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_role_id integer,
    note nvarchar(max),
    nr_order integer,
    role_id integer NOT NULL
);

CREATE TABLE char_name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    imdb_index nvarchar(2),
    imdb_id integer,
    name_pcode_nf nvarchar(5),
    surname_pcode nvarchar(5),
    md5sum nvarchar(32)
);

CREATE TABLE comp_cast_type (
    id integer NOT NULL,
    kind nvarchar(32) NOT NULL
);

CREATE TABLE company_name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    country_code nvarchar(6),
    imdb_id integer,
    name_pcode_nf nvarchar(5),
    name_pcode_sf nvarchar(5),
    md5sum nvarchar(32)
);

CREATE TABLE company_type (
    id integer NOT NULL,
    kind nvarchar(32)
);

CREATE TABLE complete_cast (
    id integer NOT NULL,
    movie_id integer,
    subject_id integer NOT NULL,
    status_id integer NOT NULL
);

CREATE TABLE info_type (
    id integer NOT NULL,
    info nvarchar(32) NOT NULL
);

CREATE TABLE keyword (
    id integer NOT NULL,
    keyword nvarchar(max) NOT NULL,
    phonetic_code nvarchar(5)
);

CREATE TABLE kind_type (
    id integer NOT NULL,
    kind nvarchar(15)
);

CREATE TABLE link_type (
    id integer NOT NULL,
    link nvarchar(32) NOT NULL
);

CREATE TABLE m_movie_info (
    id integer,
    movie_id integer,
    info_type_id integer,
    minfo integer,
    info nvarchar(max)
);

CREATE TABLE movie_companies (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    company_id integer NOT NULL,
    company_type_id integer NOT NULL,
    note nvarchar(max)
);

CREATE TABLE movie_info (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);

CREATE TABLE movie_info_idx (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);

CREATE TABLE movie_keyword (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    keyword_id integer NOT NULL
);

CREATE TABLE movie_link (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    linked_movie_id integer NOT NULL,
    link_type_id integer NOT NULL
);

CREATE TABLE name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    imdb_index nvarchar(9),
    imdb_id integer,
    gender nvarchar(1),
    name_pcode_cf nvarchar(5),
    name_pcode_nf nvarchar(5),
    surname_pcode nvarchar(5),
    md5sum nvarchar(32)
);

CREATE TABLE person_info (
    id integer NOT NULL,
    person_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);

CREATE TABLE role_type (
    id integer NOT NULL,
    role nvarchar(32) NOT NULL
);

CREATE TABLE title (
    id integer NOT NULL,
    title nvarchar(max) NOT NULL,
    imdb_index nvarchar(5),
    kind_id integer NOT NULL,
    production_year integer,
    imdb_id integer,
    phonetic_code nvarchar(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    series_years nvarchar(49),
    md5sum nvarchar(32)
);