PGDMP                          {            BestPlastic    15.2    15.2 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16398    BestPlastic    DATABASE     �   CREATE DATABASE "BestPlastic" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "BestPlastic";
                postgres    false            �            1259    16417    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16416    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    217            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    216            �            1259    16424    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16423    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    219            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    218            �            1259    16470    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16469    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    16408    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(50) NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16407    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    215            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    214            �            1259    16431    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16453    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16452    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    16430    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220                       2604    16420    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16427    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16473 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ~           2604    16411 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16434 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16456    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            *          0    16417    category 
   TABLE DATA                 public          postgres    false    217   �9       ,          0    16424    image 
   TABLE DATA                 public          postgres    false    219   :       2          0    16470    orders 
   TABLE DATA                 public          postgres    false    225   2@       (          0    16408    person 
   TABLE DATA                 public          postgres    false    215   �@       .          0    16431    product 
   TABLE DATA                 public          postgres    false    221   �B       0          0    16453    product_cart 
   TABLE DATA                 public          postgres    false    223   �M       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    216            @           0    0    image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.image_id_seq', 108, true);
          public          postgres    false    218            A           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 14, true);
          public          postgres    false    224            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 8, true);
          public          postgres    false    214            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 17, true);
          public          postgres    false    222            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 25, true);
          public          postgres    false    220            �           2606    16422    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    217            �           2606    16429    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    219            �           2606    16475    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    16413    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    215            �           2606    16458    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    16439    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    16441 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    16476 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    3206    215    225            �           2606    16447 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    217    3208    221            �           2606    16481 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3212            �           2606    16442 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    3212    219            �           2606    16464 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    3212    223            �           2606    16459 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    215    223    3206            *   t   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b���{/��kZsy�f�Ȁ)�]�C�fc��6\آpa�А��]l �[@�qq n�J�      ,     x���Ko[7����52_3$�UY(Z�i��j\�p�6��=��)�{7ZH��!9����Ӈ�~�}���_w�������˝�����8���c�[��O��=}>�w�?����voż���ƈ#�F.�N�{C�����l3^k(����>?�_�=���~g���|\��@_��Rdf
��`�(b��\^���Y�C;���bz��,�B3��p��(È����U�۱=�n�0��Yp��<%?q4EU��\����݆��{+�SL%Qp�SU��j�E|�_��m;4�q�Z[ ��;ʸx��te����i�Ӄ�y�.�һQ-�ɻy����ˈ4T[�do�5�m����ܡ'�����$��jRB�;~|�ߴ�z|�Js�t��Bh�
:�j�M-����m;z��1�T[O����.1[�+��X�w۽}��GH>��\�x{�<�ˀ�Fux��u_O��G����rZl�&���e��6�.�ژ���_Ϟ67�1E`�\.8yej���Bq��̾V�z����C��)Z>C�3��2�F����Ʌ�x��|�\3�P5���7k+��[�l|���k���覛�lR
I�1Qw-;i�K��;��j�4:��}%�b��`��H��:ھ�+������F�� �(-t9O��G�3;/�[��ǧe�8��Y��2���2D'P�r2I�������8K�U,�n�>a�1\���uJ���=���i3|�&�s����+Ύ`�1�ם5Q��X���}ѧ����ir�͈Q�e�,T�po$�������O��vI�^�����\|����̆_��Ft����L�%Ϋ��Ã�<95�GJί��1��lI�"^ �#[�J��� NK����o����v0y,�xX,�RG����������[�I����bk�f5d8�w�#U �#Z�i=��g��?]�[E��0�2V(�/j�AKB����o�������u� �/�]�@���J)Y��|-�f�X��K��!�\��7	@ш�l4�I�������f�l�p=<��c�h��E*4<��H�'��������<��O��2Wl��G����`�H)֞BC�(�,������`_�:c�|��#!ڑ��ɾ#�-�1|Yc�ckE�p���c��#�~=m֣��1F9f����T��Vz ����`��?ܗ�S=}u��_���j��;.���Y��ۈqS{��f ���n�n���eD����1L$(�6���a�`��V�
�~�*��0_l
0��s�:�=C��jȽtv>����TG}�K������W��q*�B�p��O��5�n�}	v���<��b3�Lz-�3{���,9��/�mV������4H�Z�Bq�6�Uj�X�꘹�����E�έ�O�K|�c��0�t��/OrJj}^������#/3�`�e�����=˰V���?M`;�4��F�3���k�r��8���G���6d��oґj�Yb�!�msآ'�������t���������*��      2   �   x���
�0�w���l!�?&M��:8�B�]��B���o���i�Gu��a�=�lu�u;摀Y��	�����?��>�:��M��|�c�Ⱥ�?fs�������Y�p`� #��s�'������3�9
��KŸ��B3*&˩VFQ�RO�0F�w\���G-��$I�ބ7      (   �  x���I��Pཿ���U�����
��L���2��c�׷��i�Z������/9@�D�F�f�H��Β�릀�[,����DJ�i��~�"��S���Kd�5a�/a��s�z��cB�vl�z�FܮT0*�bv�E�x��_LUJn�xB�훺"�:<8������z��<��F։{��}G�w�a�k�/�
c-�s���&M)����-���qh?���d�A-�#`%5z�����龋�� .��[fE �_�9/�67���^c�SR]2x՚z�q[ޡ
h�]�{'E듥���%�5��LZ�n ��S�O1qԎ!����D�]q3�넘`S���ӎ��<���LJ/G���u_�/v�O3qI�m�G���9��̺&ֱ�ɡ�"�V�N����Z���,)���� ��M      .   2  x��Z]o��}7��p���������y0`�E��5pe��ֆ,��vYj�H��A��u�5����r���9g�%�$Wk���"��K^���9�q����?��'���O~e?����F��Σ�O7v��[=�����g�[ܔ��O6v��n=��g�lmȵ'��ۛ;����ݖ�~����GO���y���v������oq�ӏ>6�z�y��lwV�����i�֛��^����W����n�m��d��&�If�X�^ɿa:2��uz*�ӽ$JΓY:��Ar��I,�ɭ��á����N��/�|}�3r�O.�������V�����Dh��U&@%×�����S�$��CS�r+�z�ulH�sS�С��B����8	?�S�B$�����Mr&�.���<=��s(t#O�Un��>�zx|*h� &3x�,?Khu���2t���X�&�$��!���:_�c�E��-�)�[�e7}�̏��4v q{3�}EG~��\ Fy9�,�E����/g�jcF�OoL!��
v��^3
!,��tg���J��ƞZK�P�+Y���(�3��דwL��X>�i5���	�v�)q���'���~�dwk����K���/�D�J�ȕ�?�s��"�_Epo��n:�A���!�����*�����uŊWj�i)���/e�16J��Z�7z;]�"t���6Z��jO�Bl3D����rE�f�7��D#;�%�Ӧ�/��ec�&,�=&t��n������s|�V�.���2F3%'7'掋,ҋת@����X@a�l��b���M��g�a*�s�1FpC  �F�%n@8IV��q� A�=� ��I��T�"� �X|0� LEM��rs���S K��p0/�5�͕��+�kف�Q��ÐK�4ʐ/�*������	4P�P�d1��jDٱ�^4�q:��9�h�<&fdF��W}�Ave�ld���`���n]z-D܄ϝ�H�s)�[�����~��T���wz�N��][{��/��r�с1�L�F�:a^���+����&�#��f�sMݡف5�M՗�	5*���5	!�@���]2+�N������G������k�5-�-�R���U���Yo�5��n�5��_�G��g�=�g!Se<p��EW��!��NP�B���(L�,�g+0#Q��N
aB&R���)��!�<��s��p7M�W����A)�T�1��b�g�4�Ƅv��XàSFE�V�`~]�S!�G�9�ueg��Zz�\�B] o��������崖�@Ĭ�[u9�.J�����v����[J�nS��7�66�$�j����t3v��nH����}2u����	��I��:��n�b�g�*Bc�u1��O3��_�$�Z�i��3�s�f-���:�������b��(	QH�"<�rp|2�_0�8�8���;�H�깜��m���H��"k�đ5ڐd�o��֝�g�9�/��iI���@��֚��ؽe�P-�b휏��n�`YV��C2Ռyob;򙭥/D�����cfH\�<��(��`��A���N��\Fc�F^=��
��Mɠd��� ����\	�9zR��ۓp���T�JS��n���t�}M¯Ļ�Hcsy��GZf�(/�O�(�^̗�6���!].�IF�o'O�f�J�6�W��@�Tlbs��螎�4�_��������I�����S����WW+C���v�%h>���E	+��2f���3��8���}8��&��}j�w�2CV#[RX��,h�6�vĢ��ơ���=��Ɠ��0�<2�?�|L$����Qɞ�P������ %hQR����̖^	��&�od��ْ�D�+�3�fP?1G��4�4�	�QЬ������,l��
�i���������V�3�?�wOiA�s�C ��դT�A�R��Y�k��6j���:v>:s�;*e�+C��4	��9�b�B�P�Ǚͽ�9E(*��`{�%�[ ���]F��~�
�[z^MG�NCp�L�{��Y�Us�m�Jzw���1�rg�B*����!s���z�
!���	p�|z/��KxW'K���>��K�%B́�!a 5�޲ĝ)�C����<�?�N�;X�R��5��,eS����W���y6w3�g����љ¤6��V$֠��k_��9Դ Q[�r�Pm���k��BO�����OYRJ���(A -��k���3!UqУ����h�*ಐ�ֻ}�����V̵ͬ%f�o�Gj {������zZy��_�ϐ��j���|���1H�Ӽ{
��Zm�*ް%�KW��1c�S-���ݡgw���d['�0�<xk�_.G4�W��@9��]������>QΙ1��1�g��D5�8��ZE՚3*��~8m�E�ԡ�=8-�}��- ��1�"��}fוr�3U�M��lI��r�&����z�a���N��B��M�w2�3�%)���GC��㉪��\��ގ���>�T����f�Yɐ�ŭ�쯓:�{��Ll�Z�,Y��,i*�$�8�u�2�9���w��YX�.oq�����CӗO��4g:d�����;�<ՓOQXRmY��OX��[z����N^�~#j��5��;�g�s䇄;wP9c��N����Ce��KT��,� 
��HhY�(�{�J�1�>�6��9X��*��#ϕ��DE��v#�% ���̞]6�όU?�Q8����Yf'��qm%NN�?k�'a埊u�����.�`39gq;��)������B=���������o˦k����ܹ�_Y�o!      0   
   x���         