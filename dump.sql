PGDMP  (    1                 |            db    16.1 (Debian 16.1-1.pgdg120+1)    16.1 G    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16384    db    DATABASE     m   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE db;
                docker    false            �            1259    24621    FILTER    TABLE     |   CREATE TABLE public."FILTER" (
    "PatternID" bigint NOT NULL,
    "DetaiilD" bigint NOT NULL,
    "ID" bigint NOT NULL
);
    DROP TABLE public."FILTER";
       public         heap    docker    false            �            1259    24655    FILTER_DETAIL    TABLE     �   CREATE TABLE public."FILTER_DETAIL" (
    "ID" bigint NOT NULL,
    "Platform" text NOT NULL,
    "Name" text NOT NULL,
    "Type" text NOT NULL
);
 #   DROP TABLE public."FILTER_DETAIL";
       public         heap    docker    false            �            1259    24654    FILTER_DETAIL_ID_seq    SEQUENCE        CREATE SEQUENCE public."FILTER_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."FILTER_DETAIL_ID_seq";
       public          docker    false    231            z           0    0    FILTER_DETAIL_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."FILTER_DETAIL_ID_seq" OWNED BY public."FILTER_DETAIL"."ID";
          public          docker    false    230            �            1259    24644    FILTER_ID_seq    SEQUENCE     x   CREATE SEQUENCE public."FILTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."FILTER_ID_seq";
       public          docker    false    226            {           0    0    FILTER_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."FILTER_ID_seq" OWNED BY public."FILTER"."ID";
          public          docker    false    229            �            1259    24624    FILTER_VALUE    TABLE     b   CREATE TABLE public."FILTER_VALUE" (
    "FilterID" bigint NOT NULL,
    "Value" text NOT NULL
);
 "   DROP TABLE public."FILTER_VALUE";
       public         heap    docker    false            �            1259    16436    OFFER    TABLE     �   CREATE TABLE public."OFFER" (
    "ID" bigint NOT NULL,
    "Type" text NOT NULL,
    "Link" text NOT NULL,
    "Price" numeric NOT NULL,
    "Name" text NOT NULL,
    "PlatformID" text
);
    DROP TABLE public."OFFER";
       public         heap    docker    false            �            1259    24615    OFFER_FAVOURITE    TABLE     g   CREATE TABLE public."OFFER_FAVOURITE" (
    "UserID" bigint NOT NULL,
    "OfferID" bigint NOT NULL
);
 %   DROP TABLE public."OFFER_FAVOURITE";
       public         heap    docker    false            �            1259    24618    OFFER_HIDDEN    TABLE     g   CREATE TABLE public."OFFER_HIDDEN" (
    "PatternID" bigint NOT NULL,
    "OfferID" bigint NOT NULL
);
 "   DROP TABLE public."OFFER_HIDDEN";
       public         heap    docker    false            �            1259    16435    OFFER_ID_seq    SEQUENCE     w   CREATE SEQUENCE public."OFFER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."OFFER_ID_seq";
       public          docker    false    222            |           0    0    OFFER_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."OFFER_ID_seq" OWNED BY public."OFFER"."ID";
          public          docker    false    221            �            1259    16427    PATTERN    TABLE     �   CREATE TABLE public."PATTERN" (
    "ID" bigint NOT NULL,
    "Type" text NOT NULL,
    "Query" text NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public."PATTERN";
       public         heap    docker    false            �            1259    24627    PATTERN_FILTER    TABLE     j   CREATE TABLE public."PATTERN_FILTER" (
    "PatternID" bigint NOT NULL,
    "FilterID" bigint NOT NULL
);
 $   DROP TABLE public."PATTERN_FILTER";
       public         heap    docker    false            �            1259    16426    PATTERN_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."PATTERN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."PATTERN_ID_seq";
       public          docker    false    220            }           0    0    PATTERN_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."PATTERN_ID_seq" OWNED BY public."PATTERN"."ID";
          public          docker    false    219            �            1259    16444    PATTERN_OFFER    TABLE     h   CREATE TABLE public."PATTERN_OFFER" (
    "PatternID" bigint NOT NULL,
    "OfferID" bigint NOT NULL
);
 #   DROP TABLE public."PATTERN_OFFER";
       public         heap    docker    false            �            1259    16401    USER    TABLE     �   CREATE TABLE public."USER" (
    "ID" bigint NOT NULL,
    "Username" text NOT NULL,
    "Password" text NOT NULL,
    "Email" text NOT NULL
);
    DROP TABLE public."USER";
       public         heap    docker    false            �            1259    16400    USER_ID_seq    SEQUENCE     v   CREATE SEQUENCE public."USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."USER_ID_seq";
       public          docker    false    216            ~           0    0    USER_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."USER_ID_seq" OWNED BY public."USER"."ID";
          public          docker    false    215            �            1259    24705    USER_PATTERN    TABLE     f   CREATE TABLE public."USER_PATTERN" (
    "UserID" bigint NOT NULL,
    "PatternID" bigint NOT NULL
);
 "   DROP TABLE public."USER_PATTERN";
       public         heap    docker    false            �            1259    16418    testing    TABLE     R   CREATE TABLE public.testing (
    "ID" bigint NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.testing;
       public         heap    docker    false            �            1259    16417    testing_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."testing_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."testing_ID_seq";
       public          docker    false    218                       0    0    testing_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."testing_ID_seq" OWNED BY public.testing."ID";
          public          docker    false    217            �           2604    24645 	   FILTER ID    DEFAULT     l   ALTER TABLE ONLY public."FILTER" ALTER COLUMN "ID" SET DEFAULT nextval('public."FILTER_ID_seq"'::regclass);
 <   ALTER TABLE public."FILTER" ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    229    226            �           2604    24658    FILTER_DETAIL ID    DEFAULT     z   ALTER TABLE ONLY public."FILTER_DETAIL" ALTER COLUMN "ID" SET DEFAULT nextval('public."FILTER_DETAIL_ID_seq"'::regclass);
 C   ALTER TABLE public."FILTER_DETAIL" ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    231    230    231            �           2604    16439    OFFER ID    DEFAULT     j   ALTER TABLE ONLY public."OFFER" ALTER COLUMN "ID" SET DEFAULT nextval('public."OFFER_ID_seq"'::regclass);
 ;   ALTER TABLE public."OFFER" ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    222    221    222            �           2604    16430 
   PATTERN ID    DEFAULT     n   ALTER TABLE ONLY public."PATTERN" ALTER COLUMN "ID" SET DEFAULT nextval('public."PATTERN_ID_seq"'::regclass);
 =   ALTER TABLE public."PATTERN" ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    219    220    220            �           2604    16404    USER ID    DEFAULT     h   ALTER TABLE ONLY public."USER" ALTER COLUMN "ID" SET DEFAULT nextval('public."USER_ID_seq"'::regclass);
 :   ALTER TABLE public."USER" ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    215    216    216            �           2604    16421 
   testing ID    DEFAULT     l   ALTER TABLE ONLY public.testing ALTER COLUMN "ID" SET DEFAULT nextval('public."testing_ID_seq"'::regclass);
 ;   ALTER TABLE public.testing ALTER COLUMN "ID" DROP DEFAULT;
       public          docker    false    217    218    218            m          0    24621    FILTER 
   TABLE DATA           A   COPY public."FILTER" ("PatternID", "DetaiilD", "ID") FROM stdin;
    public          docker    false    226   �O       r          0    24655    FILTER_DETAIL 
   TABLE DATA           K   COPY public."FILTER_DETAIL" ("ID", "Platform", "Name", "Type") FROM stdin;
    public          docker    false    231   P       n          0    24624    FILTER_VALUE 
   TABLE DATA           =   COPY public."FILTER_VALUE" ("FilterID", "Value") FROM stdin;
    public          docker    false    227   5P       i          0    16436    OFFER 
   TABLE DATA           V   COPY public."OFFER" ("ID", "Type", "Link", "Price", "Name", "PlatformID") FROM stdin;
    public          docker    false    222   RP       k          0    24615    OFFER_FAVOURITE 
   TABLE DATA           @   COPY public."OFFER_FAVOURITE" ("UserID", "OfferID") FROM stdin;
    public          docker    false    224   �Q       l          0    24618    OFFER_HIDDEN 
   TABLE DATA           @   COPY public."OFFER_HIDDEN" ("PatternID", "OfferID") FROM stdin;
    public          docker    false    225   �Q       g          0    16427    PATTERN 
   TABLE DATA           B   COPY public."PATTERN" ("ID", "Type", "Query", "Name") FROM stdin;
    public          docker    false    220   �Q       o          0    24627    PATTERN_FILTER 
   TABLE DATA           C   COPY public."PATTERN_FILTER" ("PatternID", "FilterID") FROM stdin;
    public          docker    false    228   �Q       j          0    16444    PATTERN_OFFER 
   TABLE DATA           A   COPY public."PATTERN_OFFER" ("PatternID", "OfferID") FROM stdin;
    public          docker    false    223   R       c          0    16401    USER 
   TABLE DATA           G   COPY public."USER" ("ID", "Username", "Password", "Email") FROM stdin;
    public          docker    false    216   BR       s          0    24705    USER_PATTERN 
   TABLE DATA           ?   COPY public."USER_PATTERN" ("UserID", "PatternID") FROM stdin;
    public          docker    false    232   �R       e          0    16418    testing 
   TABLE DATA           -   COPY public.testing ("ID", name) FROM stdin;
    public          docker    false    218   S       �           0    0    FILTER_DETAIL_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FILTER_DETAIL_ID_seq"', 1, false);
          public          docker    false    230            �           0    0    FILTER_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."FILTER_ID_seq"', 1, false);
          public          docker    false    229            �           0    0    OFFER_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."OFFER_ID_seq"', 5, true);
          public          docker    false    221            �           0    0    PATTERN_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."PATTERN_ID_seq"', 1, true);
          public          docker    false    219            �           0    0    USER_ID_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."USER_ID_seq"', 5, true);
          public          docker    false    215            �           0    0    testing_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."testing_ID_seq"', 2, true);
          public          docker    false    217            �           2606    24662     FILTER_DETAIL FILTER_DETAIL_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."FILTER_DETAIL"
    ADD CONSTRAINT "FILTER_DETAIL_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."FILTER_DETAIL" DROP CONSTRAINT "FILTER_DETAIL_pkey";
       public            docker    false    231            �           2606    24669    FILTER FILTER_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."FILTER"
    ADD CONSTRAINT "FILTER_pkey" PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public."FILTER" DROP CONSTRAINT "FILTER_pkey";
       public            docker    false    226            �           2606    16443    OFFER OFFER_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."OFFER"
    ADD CONSTRAINT "OFFER_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."OFFER" DROP CONSTRAINT "OFFER_pkey";
       public            docker    false    222            �           2606    16434    PATTERN PATTERN_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."PATTERN"
    ADD CONSTRAINT "PATTERN_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."PATTERN" DROP CONSTRAINT "PATTERN_pkey";
       public            docker    false    220            �           2606    16408    USER USER_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "USER_pkey";
       public            docker    false    216            �           2606    16425    testing testing_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.testing
    ADD CONSTRAINT testing_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.testing DROP CONSTRAINT testing_pkey;
       public            docker    false    218            �           2606    24663    FILTER FILTER_DetaiilD_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FILTER"
    ADD CONSTRAINT "FILTER_DetaiilD_fkey" FOREIGN KEY ("DetaiilD") REFERENCES public."FILTER_DETAIL"("ID") NOT VALID;
 I   ALTER TABLE ONLY public."FILTER" DROP CONSTRAINT "FILTER_DetaiilD_fkey";
       public          docker    false    226    231    3269            �           2606    24649    FILTER FILTER_PatternID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FILTER"
    ADD CONSTRAINT "FILTER_PatternID_fkey" FOREIGN KEY ("PatternID") REFERENCES public."PATTERN"("ID") NOT VALID;
 J   ALTER TABLE ONLY public."FILTER" DROP CONSTRAINT "FILTER_PatternID_fkey";
       public          docker    false    220    226    3263            �           2606    24700 '   FILTER_VALUE FILTER_VALUE_FilterID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FILTER_VALUE"
    ADD CONSTRAINT "FILTER_VALUE_FilterID_fkey" FOREIGN KEY ("FilterID") REFERENCES public."FILTER"("ID") NOT VALID;
 U   ALTER TABLE ONLY public."FILTER_VALUE" DROP CONSTRAINT "FILTER_VALUE_FilterID_fkey";
       public          docker    false    227    3267    226            �           2606    24723 ,   OFFER_FAVOURITE OFFER_FAVOURITE_OfferID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OFFER_FAVOURITE"
    ADD CONSTRAINT "OFFER_FAVOURITE_OfferID_fkey" FOREIGN KEY ("OfferID") REFERENCES public."OFFER"("ID") NOT VALID;
 Z   ALTER TABLE ONLY public."OFFER_FAVOURITE" DROP CONSTRAINT "OFFER_FAVOURITE_OfferID_fkey";
       public          docker    false    224    222    3265            �           2606    24718 +   OFFER_FAVOURITE OFFER_FAVOURITE_UserID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OFFER_FAVOURITE"
    ADD CONSTRAINT "OFFER_FAVOURITE_UserID_fkey" FOREIGN KEY ("UserID") REFERENCES public."USER"("ID") NOT VALID;
 Y   ALTER TABLE ONLY public."OFFER_FAVOURITE" DROP CONSTRAINT "OFFER_FAVOURITE_UserID_fkey";
       public          docker    false    3259    216    224            �           2606    24675 &   OFFER_HIDDEN OFFER_HIDDEN_OfferID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OFFER_HIDDEN"
    ADD CONSTRAINT "OFFER_HIDDEN_OfferID_fkey" FOREIGN KEY ("OfferID") REFERENCES public."OFFER"("ID") NOT VALID;
 T   ALTER TABLE ONLY public."OFFER_HIDDEN" DROP CONSTRAINT "OFFER_HIDDEN_OfferID_fkey";
       public          docker    false    222    3265    225            �           2606    24670 (   OFFER_HIDDEN OFFER_HIDDEN_PatternID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OFFER_HIDDEN"
    ADD CONSTRAINT "OFFER_HIDDEN_PatternID_fkey" FOREIGN KEY ("PatternID") REFERENCES public."PATTERN"("ID") NOT VALID;
 V   ALTER TABLE ONLY public."OFFER_HIDDEN" DROP CONSTRAINT "OFFER_HIDDEN_PatternID_fkey";
       public          docker    false    225    3263    220            �           2606    24695 +   PATTERN_FILTER PATTERN_FILTER_FilterID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PATTERN_FILTER"
    ADD CONSTRAINT "PATTERN_FILTER_FilterID_fkey" FOREIGN KEY ("FilterID") REFERENCES public."FILTER"("ID") NOT VALID;
 Y   ALTER TABLE ONLY public."PATTERN_FILTER" DROP CONSTRAINT "PATTERN_FILTER_FilterID_fkey";
       public          docker    false    3267    228    226            �           2606    24690 ,   PATTERN_FILTER PATTERN_FILTER_PatternID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PATTERN_FILTER"
    ADD CONSTRAINT "PATTERN_FILTER_PatternID_fkey" FOREIGN KEY ("PatternID") REFERENCES public."PATTERN"("ID") NOT VALID;
 Z   ALTER TABLE ONLY public."PATTERN_FILTER" DROP CONSTRAINT "PATTERN_FILTER_PatternID_fkey";
       public          docker    false    220    228    3263            �           2606    24685 (   PATTERN_OFFER PATTERN_OFFER_OfferID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PATTERN_OFFER"
    ADD CONSTRAINT "PATTERN_OFFER_OfferID_fkey" FOREIGN KEY ("OfferID") REFERENCES public."OFFER"("ID") NOT VALID;
 V   ALTER TABLE ONLY public."PATTERN_OFFER" DROP CONSTRAINT "PATTERN_OFFER_OfferID_fkey";
       public          docker    false    222    223    3265            �           2606    24680 *   PATTERN_OFFER PATTERN_OFFER_PatternID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PATTERN_OFFER"
    ADD CONSTRAINT "PATTERN_OFFER_PatternID_fkey" FOREIGN KEY ("PatternID") REFERENCES public."PATTERN"("ID") NOT VALID;
 X   ALTER TABLE ONLY public."PATTERN_OFFER" DROP CONSTRAINT "PATTERN_OFFER_PatternID_fkey";
       public          docker    false    223    220    3263            �           2606    24713 (   USER_PATTERN USER_PATTERN_PatternID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."USER_PATTERN"
    ADD CONSTRAINT "USER_PATTERN_PatternID_fkey" FOREIGN KEY ("PatternID") REFERENCES public."PATTERN"("ID");
 V   ALTER TABLE ONLY public."USER_PATTERN" DROP CONSTRAINT "USER_PATTERN_PatternID_fkey";
       public          docker    false    232    220    3263            �           2606    24708 %   USER_PATTERN USER_PATTERN_UserID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."USER_PATTERN"
    ADD CONSTRAINT "USER_PATTERN_UserID_fkey" FOREIGN KEY ("UserID") REFERENCES public."USER"("ID");
 S   ALTER TABLE ONLY public."USER_PATTERN" DROP CONSTRAINT "USER_PATTERN_UserID_fkey";
       public          docker    false    216    232    3259            m      x������ � �      r      x������ � �      n      x������ � �      i   +  x���;S�0�k�W�g�dɒ钆	��CA�F�(/lK�&�{��(hH�����7�H�McW�#�a��,3?��7�qܙn1w��������6~�:(��Z�d\��4���إ�@)�K)��X���QJQҺw�2{�z�ң�̞~��: m��"׼(8�+E�Mp~��]~�]Q����x�v�iA��׵!/u�4")J�/���۴�F(V�:��x
�K��M=�sO�T�b��ZĹ��M����6�7�XX����F)��F���R��4��&�h�E�Y�$�7��֛      k      x������ � �      l      x������ � �      g   "   x�3�t��IM/���,���K�� Q\1z\\\ ���      o      x������ � �      j      x�3�4�2�4bc 6bS�=... 's�      c   �   x���
�0F����z�93��"�Ax�F����(�.�A���p�|���[�:�3[� �]p�# �)�7@��d��+=?��xB�ܤ �ip��N�������;AΊ����-�M�L����k3��ވɐ�v�r�.`�3R=<L�,���W�1�tN3�      s      x������ � �      e      x�3�,I-.�/�2�L�I"�=... S>3     