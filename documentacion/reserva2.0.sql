PGDMP                         w         
   reserva2.0    11.1    11.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16465 
   reserva2.0    DATABASE     �   CREATE DATABASE "reserva2.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE "reserva2.0";
             postgres    false            �            1259    16468 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    16466    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    16476    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    nombre character varying(150),
    pers_ci character varying(20),
    telefono character varying(10),
    correo character varying(255)
);
    DROP TABLE public.person;
       public         postgres    false            �            1259    16474    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public       postgres    false    199                       0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
            public       postgres    false    198            �            1259    16484    reserva    TABLE     �   CREATE TABLE public.reserva (
    id integer NOT NULL,
    pers_ci character varying(20),
    fecha date,
    numeromesas integer,
    numeropersonas integer,
    hora character varying(255)
);
    DROP TABLE public.reserva;
       public         postgres    false            �            1259    16482    reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reserva_id_seq;
       public       postgres    false    201                       0    0    reserva_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reserva_id_seq OWNED BY public.reserva.id;
            public       postgres    false    200            �
           2604    16471    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16479 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16487 
   reserva id    DEFAULT     h   ALTER TABLE ONLY public.reserva ALTER COLUMN id SET DEFAULT nextval('public.reserva_id_seq'::regclass);
 9   ALTER TABLE public.reserva ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201                      0    16468 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   D                 0    16476    person 
   TABLE DATA               G   COPY public.person (id, nombre, pers_ci, telefono, correo) FROM stdin;
    public       postgres    false    199   �                 0    16484    reserva 
   TABLE DATA               X   COPY public.reserva (id, pers_ci, fecha, numeromesas, numeropersonas, hora) FROM stdin;
    public       postgres    false    201   �                  0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);
            public       postgres    false    196                       0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
            public       postgres    false    198                       0    0    reserva_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reserva_id_seq', 33, true);
            public       postgres    false    200            �
           2606    16473    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �
           2606    16481    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public         postgres    false    199            �
           2606    16489    reserva reserva_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public         postgres    false    201               I   x�3�420��70�74�746�01�O.JM,I�/H-*�ϋ/IL�I�4�2BUihhhSY�Z�ZT�W���� �@'            x������ � �            x������ � �     