PGDMP         %         
        {            MDSNRG    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16562    MDSNRG    DATABASE     |   CREATE DATABASE "MDSNRG" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MDSNRG";
                postgres    false            �           0    0    DATABASE "MDSNRG"    COMMENT     �   COMMENT ON DATABASE "MDSNRG" IS 'база данных танцевальной школы, описывающая нагрузку преподавателей';
                   postgres    false    3324            �            1259    16570    courses    TABLE     �   CREATE TABLE public.courses (
    id integer NOT NULL,
    name character varying,
    teacher character varying,
    buyers integer,
    price numeric
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �          0    16570    courses 
   TABLE DATA           C   COPY public.courses (id, name, teacher, buyers, price) FROM stdin;
    public          postgres    false    215   �       g           2606    16576    courses MDSNRG courses_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT "MDSNRG courses_pkey" PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.courses DROP CONSTRAINT "MDSNRG courses_pkey";
       public            postgres    false    215            �   �   x���A�@���S�d��.6$�J$D/��FmlX�Oh�)�+�s#��6]��y�<B�
�Y �g:�v�qY�%R3�vp@eVȸ� �&�K�#eSJ�g���/��++(
Gð�8�)�l串p�G��p�;��ܨ��乤>�������y����fk6�ͲvFOQ�}��8�GA��+����L�G�R�Xeͷ	y�
���	G\�=     