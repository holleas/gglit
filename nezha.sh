#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�5�dnezha.sh }S]kA}�_q�YBb�LR��[5PiIK-!L��dp3�fwӏ4 B�A�E�(T�z�*� b�V�L���$ۦiŷ�{�s�1�9�gS^�<qJ����w����f��<h�<�<RR�{���R2}'�ֵ�^\Hgtm�?�%����>��՟�;���֧��k�q��}�з?t�t?U
%Z����
#y���PS ��m����+�U���K��(f�]c.D���5��~;��m�z����Ԧܠ������\\���&g����Z��
��7���O�[��Lb~^��7��cŪ@(��h�]�j�!��l=�����8�t���nS@6h�s�,[�c����%�20@\$ q1��Rb�H�6�Ka���g�01���p���*Z�>���� �V�I�䤳���w�mlw��@�n�$����a�r�"F�ȣ������d@�, @���\�v�0&6��[��U�j[��	�WTLJ�`S���7�(� Y>I�ɸ��#e��d�4����2�J�`�����O$�XD0�eP�o��̰R��A.�߻��O�+]�?}��ȁ=5�Ƀ.�d�=���b�������  