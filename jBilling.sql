PGDMP     $    -            
    u            jbilling    10.1    10.1     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    16393    jbilling    DATABASE     �   CREATE DATABASE jbilling WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE jbilling;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16404    price    TABLE     �   CREATE TABLE price (
    pidentifier uuid NOT NULL,
    sidentifier uuid NOT NULL,
    notes character varying(50),
    created timestamp without time zone NOT NULL,
    price real NOT NULL
);
    DROP TABLE public.price;
       public         postgres    false    3            �            1259    16399    product    TABLE     �   CREATE TABLE product (
    identifier uuid NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    created timestamp without time zone NOT NULL,
    baseprice real NOT NULL
);
    DROP TABLE public.product;
       public         postgres    false    3            �            1259    16394    store    TABLE     �   CREATE TABLE store (
    identifier uuid NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50),
    created timestamp without time zone NOT NULL
);
    DROP TABLE public.store;
       public         postgres    false    3            �
          0    16404    price 
   TABLE DATA               I   COPY price (pidentifier, sidentifier, notes, created, price) FROM stdin;
    public       postgres    false    198   �       �
          0    16399    product 
   TABLE DATA               M   COPY product (identifier, name, description, created, baseprice) FROM stdin;
    public       postgres    false    197   �       �
          0    16394    store 
   TABLE DATA               @   COPY store (identifier, name, description, created) FROM stdin;
    public       postgres    false    196   �"       y
           2606    16408    price price_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY price
    ADD CONSTRAINT price_pkey PRIMARY KEY (sidentifier, pidentifier);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public         postgres    false    198    198            w
           2606    16403    product product_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (identifier);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public         postgres    false    197            u
           2606    16398    store store_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY store
    ADD CONSTRAINT store_pkey PRIMARY KEY (identifier);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public         postgres    false    196            z
           2606    16409 )   price product_store_xref_pidentifier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY price
    ADD CONSTRAINT product_store_xref_pidentifier_fkey FOREIGN KEY (pidentifier) REFERENCES product(identifier);
 S   ALTER TABLE ONLY public.price DROP CONSTRAINT product_store_xref_pidentifier_fkey;
       public       postgres    false    198    2679    197            {
           2606    16414 )   price product_store_xref_sidentifier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY price
    ADD CONSTRAINT product_store_xref_sidentifier_fkey FOREIGN KEY (sidentifier) REFERENCES store(identifier);
 S   ALTER TABLE ONLY public.price DROP CONSTRAINT product_store_xref_sidentifier_fkey;
       public       postgres    false    198    196    2677            �
   �  x��XKn,�\�N���?����ƀ}�����Ʒw�[~�Q�Q2,<<4ԥ���Ȉ`.4e���5Xg
ehӇ�M�歬�b��l����y���"�E�ۯ���}��_�u����;��~�ݔ޸�i2%�I3X��QPrN�d���X�R�X�s���1C�+���oq��?��w�3���D傟�ƃ�f��sj(Nb��#$�+R��S�:^z�|RBMG�r+t'��Q�}㘅�u��Q$U��q,1��"P����C7J�rA�c��jb�S�2� �%�1_bu�D1�'7�*Q\�G���S ՃE�u<2w��P����	�k<����>2?�'^�ɱ����6�QK�H�!��e�e���w���xm����9�����9�b��;����.q��u����{�rr<,ۗA/M�9h�S��Y�zi�_�ƓP��뼲o/ �"��:�X�)�����B|��٘Z��_������
5�C(����S������^��Bʒ��-�3���rɖ��H�ɨ�z�(�,�R��认���z���S�@�q�ʀO	:c��మ�hM�=%�]*�������X�#�̢�khQ�j��CPy�Eu�F�Q���g|�����}X��W�`0��r�i�4F�е�(MNNG��(�
Z��ې��+���j/��h�����h��0�Y ���D��
�h�Ð�Yk�z�m�3�	,�	�k���˧�����Nt���ʽ�Khآe	�BQ���׊�R��	
�si?��?j�����޹$x�,��Y����r��(j3��T�B��֚�~�Mi�Թ�?�A#HQ�	��b"�A�
�_��H7�H�r�����V�����R�A�U'y�����򔙂L�;:�"����zKM����M�����=P!42BF�"[� ��b�U����T���2J� 4qtx�����"�K���c����P_���{Z�	T�Ui�T����u�nc�&8a�	BS���ϟ�~"�%}��}@�*<��Q�B³�R�h6 �s�ڊc���W��U��$jCڗS� �{'/��������ZE<�r.@���;�-=H��	i��Eŀ_��2$g,n�^K�E�B�BX0����HOK�S��ڃ$WЬV�b��6	�x�I�᪤�Ȣ�����|W���8g������ـ��[\Sk\�4��ɶ$ts���Gk�%%A���\BK%jNi�E��{(�8k�ÀK�y=��Z|��fhe	}�fB�WtRA�9���[W(�i&��$�6�G��d�<��)�c�z��v	-E$㱐��8�N,
���)r�����Њ�k�k�y^�p?t@n�{$%/�UPV:G��/��ɾ��5K"s�r��'ӑ��uK��2��G�oV2&�f�t����Jƴ  �-1NbǙb�%c���]3p���������!�d�)�Q���� �w(��ќ�wR�S����@J��m�W���Si�ϡ�N�'㪅��Vl7�����d��a&�oXnA�@���� �����Lus~ꥻ6;c92������ήj;�@��PW��Xb4T~�����p�O�@e�v�!J��]\I<f��~��|F���`�%�>2<^=�a�8���u�������GP ϞA9���؝Oq�E�X�=�qk���c�ɶ�sH�[���URY���mN�c#d}^LOkG �w" �R#(�a�B���KE,T��g�U��
��99�KhE@m#�X���4�ѩ�T��̧����#�\zcr���3;b2�^����we���X���K�����6*l����u�x�*���\�D��.�:�����c��i�(�_u���tV�k5�+��H�����2#԰���uNv�� ����4���M0������ �%�����]��T�譀�Ν_��-�{//�7����V���r���_����Ĵ��      �
     x�}X˒�<W�� + $�:�'჏���Ю�!k��;�#�tmt͜ZR(I ��ɜi�Y]�&N��]��Mup�9����~�>}���打cv޿0l��͇],�Go��P?����Ӝ^%'d��Z�}���o������(/�
��;�l^vᅚnI(皂�՗�r
��������������w����|(�)�-�=�rS�g|���4 kru��K&�c�ڶ�^���>}�6~=a�C2�Xۘo��8Wj,Nǜ��gWe6R�%h�>�����_�I�#g����T�pteF�H��jx���,ҍWi�~_?D����Ɲ�$�S��G�j�EI3P*�b���6���O@!L���1݈��0��Q�l`�(���R��e�!,�u�I4�ӄb4��J��d4/�7c��S ���~
ݴ�{i�cf���B�]�0��f�w }
$q�Q7�[�4�rҧ:�،RRtR�`����F�)��=c!"����0�Q͙Oɵ�Z�%���@Av��ݲJ.���� J��j17��Vm�1����ۨkK�/�}K� ��Dac�#��-�0B��-x�>��O�<5������O��y�2������;g݂��ݦy�~���KM�Y�����`��.��E��VK��N��yj����ԋ6� �c�> �ޢ�P�yAO�+�B�4���.�G<�����:�S��2zpT$�Y����P�ˉo+#�=��N��K���c�c��Wp
-;�S}�Z�@�U�( ��l��g�4���R�`�B)!Z�5V�h(9<$(c���Zt�����
R�^ϴ��@ؔ�����Y/����s��>����ˉx���8����	�\�	]F��o-_�|-�}M{�ă@��&��cq�21���F4<W��9Qт� b�{���*�u\Ɗw��պ����J<�:N�x�f�mr)Hŋ���	I^Z�/:�)ŝ���2�ٛ���F3`�s�Y�d(:M~��7H]y�!�5òp�(�6�e��!��	%��%"��>�F'H_y�&F{�Ѐ��&�XC�sF~�: č#�=�;����ΏΨq�+)���N
֚���Ҡ&��Vr�֥��"��1>���|�W�Bf;і�4dQhg@&8����QB��Oi/�� �I�h�S�.u��dV]�"�(���ʏ���3dL�w3-�-"p~��������Uz�.kAk��:�].����R���@;�`������e��Lk|���0�*hw6X�ퟐɟ����!��R��!��;e�M�1	�U�� ��"��[j��ʲUA��V�-�`+Fu�a���>>g�\����	�b�jt��<�8j���$Z�@;Lg�k�C�О���~�N��j�$��y�������1@JQ�F�M�j�.i��a)� �K�U0�0�%����i:�)����H�@
��(�V����;�c
�}@:#O��HwFS\술��^��c UH�th�iw:X�L�_n_{d�#ce�:��8� KL����|���������\fC}�dL<z��F��r�� !�ƏUff�^c�'!���X#��5�!���l�вx, %�#(/�i�3}F�8Z�J��z�O{}�̧�,�*��,my�Dk��_4$�瀉=���q2��n�q���kۈ��� �8�����A�����7�=�8�4
�g�tN�2�!p�P����(ҟ��r�oc��Xf�r��vX.�5U-O��#��7��8��2D^X0n�4|�x��k���س����=��p&/!�.���ܟ}z-~@ںB��b#���*��K6t�J^��"b}��i�}ƙ�؄l�D����L	�c�D�3\���1�>��ᖄi7�Nq�#��z�a�3�~��)t��)���\�y4����	�re_�i�E�� y�N�(�)#�78���A2p'�YB�z	�cNtO|,���df6�c-��l�un1���|��z�1eY�{;�W<n�'�X�F�w������~�����1      �
   	  x��XM�\�<����I����M�k�5}"����k��>����L�	l���e�DV_Y���cP�=���
���s銾��O��?�\?�>/�����|�G�@���n�7N�X����6 �h�P���:9�8S^|�m���� �D���k�r����X�o��B�B��lk���3ݒ\#�a��ՃDByS54�9,�˛9��/���ӯt�դO��l����������COQC�%����ĩ�����/���oQ�8�ь=1�s�C*�BU�0UjיRZ�E^G��Y:H �1�"S@M��+ĘW����^E!��Ϻ"�'Ő��P�>��+	�ɯ��U�'��.A\Ҳ��W32�H���A�U�We:Z*+Q/��)Ql�eX�+V��DzF��Qҵ$?:��:׀�+����p��hv�Cj}F��Q�����PM%,���Pл�8�ޖ�;��U�=,�e�S���4��9� eT���ݗ��k=��W�Ho��;zD�6�s�l���ԡ��x�������?��~���M�-�k�~Tt{O^B)��䫇2r�d���G�o�%��k�v�����݁8Ym3xJ��G����\��K����נ��x��\�Pzp�-$�fn�F�%��.���S ���6�xt��T��A���!���)�"ݢ_5B{����]<C��3kW4�w�{t� �5�Q	l�8^�>`�]��ؠA�g�=i2V3�4<�Jh���j��iy�V!u��Lw >�Ź�V�YImT��+D]�W�[����������a~���~��<�x�܋^��1Z'(���*�F��;/�^
y|T�3��Z�MZ)�+T(p�2**�
Uc�7��~���!�uXc���B+�Cu�/a�1�g�[�+;��7�<5����Q�3�����IW?;���T��4B4��aH�Nyt�v~��uζ*�1-[�w'� �]W�IW�R0{'G�%;0�#�\(f$ ���mh3�(8>oՌl�HDb��\UH
S�f0+�����gz?��53'�����;�$H1��KەN�Sn�hx\9J�ţ6ď-zO�F�N�`�{y,z��2DOцZ���`��A�@�FN'|�@9R���ڐ�ZH	�Sg�s�F��+{��Ȏ�4w�Z��$oh�	�ȱ��xR;�
����HIo����:]���W(4����錪;V��e=��:53�_jQB݂\R��S�xL՟Pf�f佱,0\�nPC�Zuv͔e����p�]�8a�8NJ���x�т����]�+�I�z�����P��MDF��^0�T���'~�,�5�rp��f��"��`�b��x�r�Z/P�s�\3�[���`�Y5A��v�����UN�p}�Dk�֬�Q!�}��|�=�)�
<B���ﱥ�P�5�T-��W��rU����yH��dd����e��v�d'
�e��&SI���{�{���0���`_��?��(�V��T�hֽA!_K��`�����lGȌv��u3
+���-C� ��p�Y�$�}C�dcN��T���m�`�)�N��a^�
��2�k�]�j�JM�Z-����@{wp�-aj(�-���Wa�-�B�C^�+�m��%�l�n@� ΆM�`��2ڊvʗ�m�4���=3�okdR}K�!�p�|����Qx���/1��gչ�Cv�0�h>�����ƣ�`C�[_�:Q�oa�ՙ�!���$n����Xt�tyD��}��۔!ɐqnq/���|�VnT�!�΀���X�Iv�hP� ��9�5�>J�?@�zǶ�����\8�E�U��k��׏@e{l�
�F>��j+�&���k��0ڀb�CKS��ղ#�څ�M��۹=���1�@A���(�^�?��������y�w��p��u�=��	��G8��Z�f�>n�0&�a��b��6ޒ��¦��q��y��+�/��S: ��&P!Ft-��i�ˎ�Ҍ��__U~ b�J�Z/0U����T��m%Tx&��|����J�)�A6��J	�QB�8�A���6�\#��A�dS.�H�H_P�!��*P0�'|�~�%(l�"�W���q��q�+tdĲI�<������2�!�
߶�:&c����v���_�����d���/H�^Z�Rw���\u`!�鼿�`�gʸK��nnѶo��*)X��K(M>K�w8y��,ǀ`��0��'�+:2�j���8�`{%F5���iW�x���K@Z�����r:���}C�>c�pI�{+�~$j:��o@~��z�+�]     