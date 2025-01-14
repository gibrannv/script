#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYЉ�  ���Dp}���~nގ����       @��  �L�)�L��F���Ѓ4 a<Sh4�D2dѠ4i����0&�1#A� q�&��LFF�!�4i�1  �$I�2i�	��BmOi2dM���S��F�Cb���F.�}������B��A����Nԝ:�0�Mj(N���}���M�B��U��%��䣗_ap۴i]@���1�.
�F:�I�X��Uu��� ��4�� �0-�2�1)*C��C�\
->=^�pޘ�L������4���eڮ?��âF>~&>w-4}P+ ��ur�7�Z���V�
��ǈHO
Ø�,~)'�#,�i���f�F-��L˴��$��J��!A7'��'�L��!�:յ��f����G6$x~�`t?Ż��x~d�Uw�#�8R�0���T����RRB�ٞ$!���Lx���*����=���kWzaң$y+B}݃�\4�TF�]i��	�ɓ �Az���yQK���$+�VS���@�_�Q���@SR���g�L�U���/>JF�ծ���h6谩��h��o�	�9��]R��L>���h1l�&`�Z�a�63�J
�:(8ը��T�c��hX����2ʒQ��֮�6����a��靳B�@�'�U�Y���D��@�T*�0�y�zb*1̨�DB�p�e����]�'m��Ȳ���]1߱9=��Sx���dR�c-��}�$��I%�%��$$��]��B@CB'