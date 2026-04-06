create table
    transportadora (
        id_transportadora integer generated always as identity primary key,
        nome text not null unique
    )
create table
    tipo_veiculo (
        id_tipo_veiculo integer generated always as identity primary key,
        nome text not null unique
    )
create table
    tipo_entrada (
        id_tipo_entrada integer generated always as identity primary key,
        nome text not null unique
    )
create table
    resp_descarga (
        id_resp_descarga integer generated always as identity primary key,
        nome text not null unique
    )
create table
    resp_agenda (
        id_resp_agenda integer generated always as identity primary key,
        nome text not null unique
    )
create table
    parceiro (
        id_parceiro integer generated always as identity primary key,
        nome text not null unique
    )
create table
    recebimento (
        id_recebimento integer generated always as identity primary key,
        numero_laudo integer not null unique,
        id_resp_agend integer references resp_agenda (id_resp_agenda) null,
        id_tipo_entrada integer references tipo_entrada (id_tipo_entrada) not null,
        id_tipo_veiculo integer references tipo_veiculo (id_tipo_veiculo) not null,
        ts_chegada timestamp not null,
        ts_liberacao timestamp not null,
        virou_dia boolean not null,
        id_transportadora integer references transportadora (id_transportadora) not null,
        id_parceiro integer references parceiro (id_parceiro) not null,
        id_resp_descarga integer references resp_descarga (id_resp_descarga) not null,
        qtde_sistema smallint not null check (qtde_sistema >= 1),
        qtde_fisico smallint not null check (qtde_fisico >= 1) check (ts_liberacao >= ts_chegada)
    );