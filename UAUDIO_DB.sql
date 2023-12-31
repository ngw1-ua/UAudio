PGDMP     6    "                {            UAUDIO    9.6.15    9.6.15 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17608    UAUDIO    DATABASE     �   CREATE DATABASE "UAUDIO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "UAUDIO";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17648    album    TABLE     �   CREATE TABLE public.album (
    id integer NOT NULL,
    name character varying(255),
    foto character varying(255),
    fecha time without time zone,
    artistas_id integer
);
    DROP TABLE public.album;
       public         postgres    false    3            �            1259    17643    artistas    TABLE     [   CREATE TABLE public.artistas (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.artistas;
       public         postgres    false    3            �            1259    17635    cancion    TABLE     �   CREATE TABLE public.cancion (
    id integer NOT NULL,
    name character varying(255),
    lyric character varying(255),
    mp3 character varying(255),
    album_id integer
);
    DROP TABLE public.cancion;
       public         postgres    false    3            �            1259    17716    cancion_artistas    TABLE     l   CREATE TABLE public.cancion_artistas (
    cancion_id integer NOT NULL,
    artistas_id integer NOT NULL
);
 $   DROP TABLE public.cancion_artistas;
       public         postgres    false    3            �            1259    17609    group    TABLE     v   CREATE TABLE public."group" (
    id integer NOT NULL,
    groupname character varying(255),
    module_id integer
);
    DROP TABLE public."group";
       public         postgres    false    3            �            1259    17661    group_module    TABLE     d   CREATE TABLE public.group_module (
    group_id integer NOT NULL,
    module_id integer NOT NULL
);
     DROP TABLE public.group_module;
       public         postgres    false    3            �            1259    17614    module    TABLE     �   CREATE TABLE public.module (
    id integer NOT NULL,
    moduleid character varying(255),
    modulename character varying(255)
);
    DROP TABLE public.module;
       public         postgres    false    3            �            1259    17630    playlist    TABLE     p   CREATE TABLE public.playlist (
    id integer NOT NULL,
    name character varying(255),
    user_id integer
);
    DROP TABLE public.playlist;
       public         postgres    false    3            �            1259    17701    playlist_cancion    TABLE     l   CREATE TABLE public.playlist_cancion (
    playlist_id integer NOT NULL,
    cancion_id integer NOT NULL
);
 $   DROP TABLE public.playlist_cancion;
       public         postgres    false    3            �            1259    17622    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    email character varying(255),
    group_id integer
);
    DROP TABLE public."user";
       public         postgres    false    3            �            1259    17681 
   user_group    TABLE     `   CREATE TABLE public.user_group (
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
    DROP TABLE public.user_group;
       public         postgres    false    3            �          0    17648    album 
   TABLE DATA               C   COPY public.album (id, name, foto, fecha, artistas_id) FROM stdin;
    public       postgres    false    191   |<       �          0    17643    artistas 
   TABLE DATA               ,   COPY public.artistas (id, name) FROM stdin;
    public       postgres    false    190   =       �          0    17635    cancion 
   TABLE DATA               A   COPY public.cancion (id, name, lyric, mp3, album_id) FROM stdin;
    public       postgres    false    189   _=       �          0    17716    cancion_artistas 
   TABLE DATA               C   COPY public.cancion_artistas (cancion_id, artistas_id) FROM stdin;
    public       postgres    false    195   '>       �          0    17609    group 
   TABLE DATA               ;   COPY public."group" (id, groupname, module_id) FROM stdin;
    public       postgres    false    185   Q>       �          0    17661    group_module 
   TABLE DATA               ;   COPY public.group_module (group_id, module_id) FROM stdin;
    public       postgres    false    192   v>       �          0    17614    module 
   TABLE DATA               :   COPY public.module (id, moduleid, modulename) FROM stdin;
    public       postgres    false    186   �>       �          0    17630    playlist 
   TABLE DATA               5   COPY public.playlist (id, name, user_id) FROM stdin;
    public       postgres    false    188   �>       �          0    17701    playlist_cancion 
   TABLE DATA               C   COPY public.playlist_cancion (playlist_id, cancion_id) FROM stdin;
    public       postgres    false    194   �>       �          0    17622    user 
   TABLE DATA               I   COPY public."user" (id, username, password, email, group_id) FROM stdin;
    public       postgres    false    187   ?       �          0    17681 
   user_group 
   TABLE DATA               7   COPY public.user_group (user_id, group_id) FROM stdin;
    public       postgres    false    193   M?                  2606    17655    album album_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public         postgres    false    191    191                       2606    17647    artistas artistas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.artistas
    ADD CONSTRAINT artistas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.artistas DROP CONSTRAINT artistas_pkey;
       public         postgres    false    190    190                       2606    17720 &   cancion_artistas cancion_artistas_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.cancion_artistas
    ADD CONSTRAINT cancion_artistas_pkey PRIMARY KEY (cancion_id, artistas_id);
 P   ALTER TABLE ONLY public.cancion_artistas DROP CONSTRAINT cancion_artistas_pkey;
       public         postgres    false    195    195    195                       2606    17642    cancion cancion_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cancion
    ADD CONSTRAINT cancion_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cancion DROP CONSTRAINT cancion_pkey;
       public         postgres    false    189    189            
           2606    17665    group_module group_module_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.group_module
    ADD CONSTRAINT group_module_pkey PRIMARY KEY (group_id, module_id);
 H   ALTER TABLE ONLY public.group_module DROP CONSTRAINT group_module_pkey;
       public         postgres    false    192    192    192            �           2606    17613    group group_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."group" DROP CONSTRAINT group_pkey;
       public         postgres    false    185    185            �           2606    17621    module module_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public         postgres    false    186    186                       2606    17705 &   playlist_cancion playlist_cancion_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT playlist_cancion_pkey PRIMARY KEY (playlist_id, cancion_id);
 P   ALTER TABLE ONLY public.playlist_cancion DROP CONSTRAINT playlist_cancion_pkey;
       public         postgres    false    194    194    194                       2606    17634    playlist playlist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.playlist DROP CONSTRAINT playlist_pkey;
       public         postgres    false    188    188                       2606    17685    user_group user_group_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (user_id, group_id);
 D   ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_pkey;
       public         postgres    false    193    193    193                        2606    17629    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    187    187                       2606    17731    album fk_album_artistas    FK CONSTRAINT     }   ALTER TABLE ONLY public.album
    ADD CONSTRAINT fk_album_artistas FOREIGN KEY (artistas_id) REFERENCES public.artistas(id);
 A   ALTER TABLE ONLY public.album DROP CONSTRAINT fk_album_artistas;
       public       postgres    false    191    190    2054                       2606    17736    cancion fk_cancion_album    FK CONSTRAINT     x   ALTER TABLE ONLY public.cancion
    ADD CONSTRAINT fk_cancion_album FOREIGN KEY (album_id) REFERENCES public.album(id);
 B   ALTER TABLE ONLY public.cancion DROP CONSTRAINT fk_cancion_album;
       public       postgres    false    191    2056    189                       2606    17726 -   cancion_artistas fk_cancion_artistas_artistas    FK CONSTRAINT     �   ALTER TABLE ONLY public.cancion_artistas
    ADD CONSTRAINT fk_cancion_artistas_artistas FOREIGN KEY (artistas_id) REFERENCES public.artistas(id);
 W   ALTER TABLE ONLY public.cancion_artistas DROP CONSTRAINT fk_cancion_artistas_artistas;
       public       postgres    false    2054    190    195                       2606    17721 ,   cancion_artistas fk_cancion_artistas_cancion    FK CONSTRAINT     �   ALTER TABLE ONLY public.cancion_artistas
    ADD CONSTRAINT fk_cancion_artistas_cancion FOREIGN KEY (cancion_id) REFERENCES public.cancion(id);
 V   ALTER TABLE ONLY public.cancion_artistas DROP CONSTRAINT fk_cancion_artistas_cancion;
       public       postgres    false    2052    189    195                       2606    17656    group fk_group_module    FK CONSTRAINT     y   ALTER TABLE ONLY public."group"
    ADD CONSTRAINT fk_group_module FOREIGN KEY (module_id) REFERENCES public.module(id);
 A   ALTER TABLE ONLY public."group" DROP CONSTRAINT fk_group_module;
       public       postgres    false    185    186    2046                       2606    17666 "   group_module fk_group_module_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_module
    ADD CONSTRAINT fk_group_module_group FOREIGN KEY (group_id) REFERENCES public."group"(id);
 L   ALTER TABLE ONLY public.group_module DROP CONSTRAINT fk_group_module_group;
       public       postgres    false    185    2044    192                       2606    17671 #   group_module fk_group_module_module    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_module
    ADD CONSTRAINT fk_group_module_module FOREIGN KEY (module_id) REFERENCES public.module(id);
 M   ALTER TABLE ONLY public.group_module DROP CONSTRAINT fk_group_module_module;
       public       postgres    false    192    2046    186                       2606    17711 ,   playlist_cancion fk_playlist_cancion_cancion    FK CONSTRAINT     �   ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT fk_playlist_cancion_cancion FOREIGN KEY (cancion_id) REFERENCES public.cancion(id);
 V   ALTER TABLE ONLY public.playlist_cancion DROP CONSTRAINT fk_playlist_cancion_cancion;
       public       postgres    false    2052    189    194                       2606    17706 -   playlist_cancion fk_playlist_cancion_playlist    FK CONSTRAINT     �   ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT fk_playlist_cancion_playlist FOREIGN KEY (playlist_id) REFERENCES public.playlist(id);
 W   ALTER TABLE ONLY public.playlist_cancion DROP CONSTRAINT fk_playlist_cancion_playlist;
       public       postgres    false    194    188    2050                       2606    17696    playlist fk_playlist_user    FK CONSTRAINT     y   ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT fk_playlist_user FOREIGN KEY (user_id) REFERENCES public."user"(id);
 C   ALTER TABLE ONLY public.playlist DROP CONSTRAINT fk_playlist_user;
       public       postgres    false    187    188    2048                       2606    17676    user fk_user_group    FK CONSTRAINT     v   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT fk_user_group FOREIGN KEY (group_id) REFERENCES public."group"(id);
 >   ALTER TABLE ONLY public."user" DROP CONSTRAINT fk_user_group;
       public       postgres    false    2044    185    187                       2606    17691    user_group fk_user_group_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT fk_user_group_group FOREIGN KEY (group_id) REFERENCES public."group"(id);
 H   ALTER TABLE ONLY public.user_group DROP CONSTRAINT fk_user_group_group;
       public       postgres    false    193    185    2044                       2606    17686    user_group fk_user_group_user    FK CONSTRAINT     }   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public."user"(id);
 G   ALTER TABLE ONLY public.user_group DROP CONSTRAINT fk_user_group_user;
       public       postgres    false    187    2048    193            �   �   x�=�M�0���SL8 �;5q�;�1�c3ءT5m��+�i�6��{��i;��z�?�1�m�����`i�n�Ĕ E��������5��g�~��qҌ�y� �:ȟo֙<�T!Jh�bO֢��l���5�8��+��B�/��4n      �   2   x�3����2��,��S�M�LI��2�t���KQp/M,J�L������ ��      �   �   x�M�;�0���9�76D[�+�P�
1u1�m#�FrRn�)�%������C8sﵡʊ�2�D�P=z��el�1�U�28��݅m�-�󱘇�(�ٞ%�Z�
va|<Uː_H���񤉛�i}M�D[��"�!�:�
���Hf�'��y�&Ph?�a���޳<A
;+µ�F+�J���R�      �      x�3�4�2�4�2b ����� ��      �      x�3�,.3�4����� �B      �      x�3�4����� ]      �      x�3�,.3a�=... `,      �      x�3���L,�4����� ��      �      x�3�4�2�4����� ��      �   7   x�3�,N,�A鹉�9z�����\F���y��9��c΂ԂT�"���� �S      �      x�3�4����� ]     