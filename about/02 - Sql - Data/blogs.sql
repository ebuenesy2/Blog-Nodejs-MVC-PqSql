PGDMP  
    8                 |            test    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    test    DATABASE        CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1254';
    DROP DATABASE test;
                postgres    false            �            1259    16572    blogs    TABLE     �  CREATE TABLE public.blogs (
    id integer NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    category text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    created_byid integer,
    isupdated integer DEFAULT 0 NOT NULL,
    updated_at timestamp with time zone,
    updated_byid integer,
    isactive integer DEFAULT 1 NOT NULL,
    isdeleted integer DEFAULT 0 NOT NULL,
    deleted_at timestamp with time zone,
    deleted_byid integer
);
    DROP TABLE public.blogs;
       public         heap    postgres    false            �            1259    16571    blogs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.blogs_id_seq;
       public          postgres    false    216            �           0    0    blogs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;
          public          postgres    false    215            !           2604    16575    blogs id    DEFAULT     d   ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);
 7   ALTER TABLE public.blogs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16572    blogs 
   TABLE DATA           �   COPY public.blogs (id, title, body, category, created_at, created_byid, isupdated, updated_at, updated_byid, isactive, isdeleted, deleted_at, deleted_byid) FROM stdin;
    public          postgres    false    216          �           0    0    blogs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.blogs_id_seq', 21, true);
          public          postgres    false    215            '           2606    16583    blogs blogs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.blogs DROP CONSTRAINT blogs_pkey;
       public            postgres    false    216            �   �  x��T�n� ]3_��
�{�V]DJ"U}���6� ��`�ҿ��'�T�f�X��</C�ã5��ڡG���◱j��M�V9�����~��ē�+ݪNu�R�i0�I���դZ�O�5z����[�������o�)�o(��fe��/Iq,��@3�(���c���t�������m�l�Cw[l�i}3�"��
������^<\��$��P��̪�;9��b��&�gmzsz�&�-I��d��aS"�a���L���_P���U}�/��p��X9�w���5@<��u��w�T���Z�yz��Iz���I��<�K�G� �.ff�g��9+���5
�����	���*����&^�Ś�"+���z��:"0y6}~�Z9:	"�����#�a>.��X�KM�skR�ʣ�	\;ߗ�_�s����� ?ہώɟɡ�!�. �r��Y�Nڀ�w��&��J�� -��V9$���O� �7��J��!��'�
]�)��h��мd�� V��_�%���*�,B��׀o�X6f��_�w���<�p-��j\Zp�GS�DQ�fh	�p��I�Llv�,=����R���;�����uQ�h�L_9C��N��=��N�ԭ|ϫjhEʌ�u�M�/�&��?(�"�Ҁ59q��G39뻍%�=��x�!��Ɓs����K)ziѝw��2<6�N�c]]c���?�5�     