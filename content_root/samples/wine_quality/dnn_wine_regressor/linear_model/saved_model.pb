đ
Őľ
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.12.02
b'unknown'8Ň

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_class
loc:@global_step*
shape: *
dtype0	*
_output_shapes
: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_5Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_6Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_7Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_8Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_9Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
i
Placeholder_10Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Đ
<linear/linear_model/alcohol/weights/part_0/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@linear/linear_model/alcohol/weights/part_0*
dtype0*
_output_shapes

:
ď
*linear/linear_model/alcohol/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *;
shared_name,*linear/linear_model/alcohol/weights/part_0*=
_class3
1/loc:@linear/linear_model/alcohol/weights/part_0*
shape
:
Ľ
Klinear/linear_model/alcohol/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp*linear/linear_model/alcohol/weights/part_0*
_output_shapes
: 
ű
1linear/linear_model/alcohol/weights/part_0/AssignAssignVariableOp*linear/linear_model/alcohol/weights/part_0<linear/linear_model/alcohol/weights/part_0/Initializer/zeros*
dtype0*=
_class3
1/loc:@linear/linear_model/alcohol/weights/part_0
č
>linear/linear_model/alcohol/weights/part_0/Read/ReadVariableOpReadVariableOp*linear/linear_model/alcohol/weights/part_0*=
_class3
1/loc:@linear/linear_model/alcohol/weights/part_0*
dtype0*
_output_shapes

:

7linear/linear_model/linear_model/alcohol/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ź
3linear/linear_model/linear_model/alcohol/ExpandDims
ExpandDimsPlaceholder_107linear/linear_model/linear_model/alcohol/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

.linear/linear_model/linear_model/alcohol/ShapeShape3linear/linear_model/linear_model/alcohol/ExpandDims*
_output_shapes
:*
T0

<linear/linear_model/linear_model/alcohol/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

>linear/linear_model/linear_model/alcohol/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

>linear/linear_model/linear_model/alcohol/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ú
6linear/linear_model/linear_model/alcohol/strided_sliceStridedSlice.linear/linear_model/linear_model/alcohol/Shape<linear/linear_model/linear_model/alcohol/strided_slice/stack>linear/linear_model/linear_model/alcohol/strided_slice/stack_1>linear/linear_model/linear_model/alcohol/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
z
8linear/linear_model/linear_model/alcohol/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ţ
6linear/linear_model/linear_model/alcohol/Reshape/shapePack6linear/linear_model/linear_model/alcohol/strided_slice8linear/linear_model/linear_model/alcohol/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ú
0linear/linear_model/linear_model/alcohol/ReshapeReshape3linear/linear_model/linear_model/alcohol/ExpandDims6linear/linear_model/linear_model/alcohol/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

2linear/linear_model/alcohol/weights/ReadVariableOpReadVariableOp*linear/linear_model/alcohol/weights/part_0*
dtype0*
_output_shapes

:

#linear/linear_model/alcohol/weightsIdentity2linear/linear_model/alcohol/weights/ReadVariableOp*
T0*
_output_shapes

:
Č
5linear/linear_model/linear_model/alcohol/weighted_sumMatMul0linear/linear_model/linear_model/alcohol/Reshape#linear/linear_model/alcohol/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
>linear/linear_model/chlorides/weights/part_0/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@linear/linear_model/chlorides/weights/part_0*
dtype0*
_output_shapes

:
ő
,linear/linear_model/chlorides/weights/part_0VarHandleOp*=
shared_name.,linear/linear_model/chlorides/weights/part_0*?
_class5
31loc:@linear/linear_model/chlorides/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
Š
Mlinear/linear_model/chlorides/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/chlorides/weights/part_0*
_output_shapes
: 

3linear/linear_model/chlorides/weights/part_0/AssignAssignVariableOp,linear/linear_model/chlorides/weights/part_0>linear/linear_model/chlorides/weights/part_0/Initializer/zeros*
dtype0*?
_class5
31loc:@linear/linear_model/chlorides/weights/part_0
î
@linear/linear_model/chlorides/weights/part_0/Read/ReadVariableOpReadVariableOp,linear/linear_model/chlorides/weights/part_0*
dtype0*
_output_shapes

:*?
_class5
31loc:@linear/linear_model/chlorides/weights/part_0

9linear/linear_model/linear_model/chlorides/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ż
5linear/linear_model/linear_model/chlorides/ExpandDims
ExpandDimsPlaceholder_49linear/linear_model/linear_model/chlorides/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0linear/linear_model/linear_model/chlorides/ShapeShape5linear/linear_model/linear_model/chlorides/ExpandDims*
_output_shapes
:*
T0

>linear/linear_model/linear_model/chlorides/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/chlorides/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/chlorides/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

8linear/linear_model/linear_model/chlorides/strided_sliceStridedSlice0linear/linear_model/linear_model/chlorides/Shape>linear/linear_model/linear_model/chlorides/strided_slice/stack@linear/linear_model/linear_model/chlorides/strided_slice/stack_1@linear/linear_model/linear_model/chlorides/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
|
:linear/linear_model/linear_model/chlorides/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ä
8linear/linear_model/linear_model/chlorides/Reshape/shapePack8linear/linear_model/linear_model/chlorides/strided_slice:linear/linear_model/linear_model/chlorides/Reshape/shape/1*
N*
_output_shapes
:*
T0
ŕ
2linear/linear_model/linear_model/chlorides/ReshapeReshape5linear/linear_model/linear_model/chlorides/ExpandDims8linear/linear_model/linear_model/chlorides/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
4linear/linear_model/chlorides/weights/ReadVariableOpReadVariableOp,linear/linear_model/chlorides/weights/part_0*
dtype0*
_output_shapes

:

%linear/linear_model/chlorides/weightsIdentity4linear/linear_model/chlorides/weights/ReadVariableOp*
_output_shapes

:*
T0
Î
7linear/linear_model/linear_model/chlorides/weighted_sumMatMul2linear/linear_model/linear_model/chlorides/Reshape%linear/linear_model/chlorides/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
@linear/linear_model/citric_acid/weights/part_0/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@linear/linear_model/citric_acid/weights/part_0*
dtype0*
_output_shapes

:
ű
.linear/linear_model/citric_acid/weights/part_0VarHandleOp*?
shared_name0.linear/linear_model/citric_acid/weights/part_0*A
_class7
53loc:@linear/linear_model/citric_acid/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
­
Olinear/linear_model/citric_acid/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/citric_acid/weights/part_0*
_output_shapes
: 

5linear/linear_model/citric_acid/weights/part_0/AssignAssignVariableOp.linear/linear_model/citric_acid/weights/part_0@linear/linear_model/citric_acid/weights/part_0/Initializer/zeros*A
_class7
53loc:@linear/linear_model/citric_acid/weights/part_0*
dtype0
ô
Blinear/linear_model/citric_acid/weights/part_0/Read/ReadVariableOpReadVariableOp.linear/linear_model/citric_acid/weights/part_0*A
_class7
53loc:@linear/linear_model/citric_acid/weights/part_0*
dtype0*
_output_shapes

:

;linear/linear_model/linear_model/citric_acid/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Ă
7linear/linear_model/linear_model/citric_acid/ExpandDims
ExpandDimsPlaceholder_2;linear/linear_model/linear_model/citric_acid/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

2linear/linear_model/linear_model/citric_acid/ShapeShape7linear/linear_model/linear_model/citric_acid/ExpandDims*
T0*
_output_shapes
:

@linear/linear_model/linear_model/citric_acid/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Blinear/linear_model/linear_model/citric_acid/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Blinear/linear_model/linear_model/citric_acid/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

:linear/linear_model/linear_model/citric_acid/strided_sliceStridedSlice2linear/linear_model/linear_model/citric_acid/Shape@linear/linear_model/linear_model/citric_acid/strided_slice/stackBlinear/linear_model/linear_model/citric_acid/strided_slice/stack_1Blinear/linear_model/linear_model/citric_acid/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
~
<linear/linear_model/linear_model/citric_acid/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ę
:linear/linear_model/linear_model/citric_acid/Reshape/shapePack:linear/linear_model/linear_model/citric_acid/strided_slice<linear/linear_model/linear_model/citric_acid/Reshape/shape/1*
T0*
N*
_output_shapes
:
ć
4linear/linear_model/linear_model/citric_acid/ReshapeReshape7linear/linear_model/linear_model/citric_acid/ExpandDims:linear/linear_model/linear_model/citric_acid/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
6linear/linear_model/citric_acid/weights/ReadVariableOpReadVariableOp.linear/linear_model/citric_acid/weights/part_0*
dtype0*
_output_shapes

:

'linear/linear_model/citric_acid/weightsIdentity6linear/linear_model/citric_acid/weights/ReadVariableOp*
T0*
_output_shapes

:
Ô
9linear/linear_model/linear_model/citric_acid/weighted_sumMatMul4linear/linear_model/linear_model/citric_acid/Reshape'linear/linear_model/citric_acid/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
<linear/linear_model/density/weights/part_0/Initializer/zerosConst*
valueB*    *=
_class3
1/loc:@linear/linear_model/density/weights/part_0*
dtype0*
_output_shapes

:
ď
*linear/linear_model/density/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *;
shared_name,*linear/linear_model/density/weights/part_0*=
_class3
1/loc:@linear/linear_model/density/weights/part_0
Ľ
Klinear/linear_model/density/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp*linear/linear_model/density/weights/part_0*
_output_shapes
: 
ű
1linear/linear_model/density/weights/part_0/AssignAssignVariableOp*linear/linear_model/density/weights/part_0<linear/linear_model/density/weights/part_0/Initializer/zeros*=
_class3
1/loc:@linear/linear_model/density/weights/part_0*
dtype0
č
>linear/linear_model/density/weights/part_0/Read/ReadVariableOpReadVariableOp*linear/linear_model/density/weights/part_0*=
_class3
1/loc:@linear/linear_model/density/weights/part_0*
dtype0*
_output_shapes

:

7linear/linear_model/linear_model/density/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
3linear/linear_model/linear_model/density/ExpandDims
ExpandDimsPlaceholder_77linear/linear_model/linear_model/density/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

.linear/linear_model/linear_model/density/ShapeShape3linear/linear_model/linear_model/density/ExpandDims*
T0*
_output_shapes
:

<linear/linear_model/linear_model/density/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

>linear/linear_model/linear_model/density/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

>linear/linear_model/linear_model/density/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ú
6linear/linear_model/linear_model/density/strided_sliceStridedSlice.linear/linear_model/linear_model/density/Shape<linear/linear_model/linear_model/density/strided_slice/stack>linear/linear_model/linear_model/density/strided_slice/stack_1>linear/linear_model/linear_model/density/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
z
8linear/linear_model/linear_model/density/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ţ
6linear/linear_model/linear_model/density/Reshape/shapePack6linear/linear_model/linear_model/density/strided_slice8linear/linear_model/linear_model/density/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ú
0linear/linear_model/linear_model/density/ReshapeReshape3linear/linear_model/linear_model/density/ExpandDims6linear/linear_model/linear_model/density/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

2linear/linear_model/density/weights/ReadVariableOpReadVariableOp*linear/linear_model/density/weights/part_0*
dtype0*
_output_shapes

:

#linear/linear_model/density/weightsIdentity2linear/linear_model/density/weights/ReadVariableOp*
T0*
_output_shapes

:
Č
5linear/linear_model/linear_model/density/weighted_sumMatMul0linear/linear_model/linear_model/density/Reshape#linear/linear_model/density/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
Blinear/linear_model/fixed_acidity/weights/part_0/Initializer/zerosConst*
valueB*    *C
_class9
75loc:@linear/linear_model/fixed_acidity/weights/part_0*
dtype0*
_output_shapes

:

0linear/linear_model/fixed_acidity/weights/part_0VarHandleOp*A
shared_name20linear/linear_model/fixed_acidity/weights/part_0*C
_class9
75loc:@linear/linear_model/fixed_acidity/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
ą
Qlinear/linear_model/fixed_acidity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/fixed_acidity/weights/part_0*
_output_shapes
: 

7linear/linear_model/fixed_acidity/weights/part_0/AssignAssignVariableOp0linear/linear_model/fixed_acidity/weights/part_0Blinear/linear_model/fixed_acidity/weights/part_0/Initializer/zeros*
dtype0*C
_class9
75loc:@linear/linear_model/fixed_acidity/weights/part_0
ú
Dlinear/linear_model/fixed_acidity/weights/part_0/Read/ReadVariableOpReadVariableOp0linear/linear_model/fixed_acidity/weights/part_0*C
_class9
75loc:@linear/linear_model/fixed_acidity/weights/part_0*
dtype0*
_output_shapes

:

=linear/linear_model/linear_model/fixed_acidity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ĺ
9linear/linear_model/linear_model/fixed_acidity/ExpandDims
ExpandDimsPlaceholder=linear/linear_model/linear_model/fixed_acidity/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4linear/linear_model/linear_model/fixed_acidity/ShapeShape9linear/linear_model/linear_model/fixed_acidity/ExpandDims*
_output_shapes
:*
T0

Blinear/linear_model/linear_model/fixed_acidity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Dlinear/linear_model/linear_model/fixed_acidity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Dlinear/linear_model/linear_model/fixed_acidity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<linear/linear_model/linear_model/fixed_acidity/strided_sliceStridedSlice4linear/linear_model/linear_model/fixed_acidity/ShapeBlinear/linear_model/linear_model/fixed_acidity/strided_slice/stackDlinear/linear_model/linear_model/fixed_acidity/strided_slice/stack_1Dlinear/linear_model/linear_model/fixed_acidity/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 

>linear/linear_model/linear_model/fixed_acidity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
đ
<linear/linear_model/linear_model/fixed_acidity/Reshape/shapePack<linear/linear_model/linear_model/fixed_acidity/strided_slice>linear/linear_model/linear_model/fixed_acidity/Reshape/shape/1*
T0*
N*
_output_shapes
:
ě
6linear/linear_model/linear_model/fixed_acidity/ReshapeReshape9linear/linear_model/linear_model/fixed_acidity/ExpandDims<linear/linear_model/linear_model/fixed_acidity/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
8linear/linear_model/fixed_acidity/weights/ReadVariableOpReadVariableOp0linear/linear_model/fixed_acidity/weights/part_0*
dtype0*
_output_shapes

:

)linear/linear_model/fixed_acidity/weightsIdentity8linear/linear_model/fixed_acidity/weights/ReadVariableOp*
T0*
_output_shapes

:
Ú
;linear/linear_model/linear_model/fixed_acidity/weighted_sumMatMul6linear/linear_model/linear_model/fixed_acidity/Reshape)linear/linear_model/fixed_acidity/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
Hlinear/linear_model/free_sulfur_dioxide/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *I
_class?
=;loc:@linear/linear_model/free_sulfur_dioxide/weights/part_0

6linear/linear_model/free_sulfur_dioxide/weights/part_0VarHandleOp*G
shared_name86linear/linear_model/free_sulfur_dioxide/weights/part_0*I
_class?
=;loc:@linear/linear_model/free_sulfur_dioxide/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
˝
Wlinear/linear_model/free_sulfur_dioxide/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/free_sulfur_dioxide/weights/part_0*
_output_shapes
: 
Ť
=linear/linear_model/free_sulfur_dioxide/weights/part_0/AssignAssignVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0Hlinear/linear_model/free_sulfur_dioxide/weights/part_0/Initializer/zeros*
dtype0*I
_class?
=;loc:@linear/linear_model/free_sulfur_dioxide/weights/part_0

Jlinear/linear_model/free_sulfur_dioxide/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:*I
_class?
=;loc:@linear/linear_model/free_sulfur_dioxide/weights/part_0

Clinear/linear_model/linear_model/free_sulfur_dioxide/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ó
?linear/linear_model/linear_model/free_sulfur_dioxide/ExpandDims
ExpandDimsPlaceholder_5Clinear/linear_model/linear_model/free_sulfur_dioxide/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
:linear/linear_model/linear_model/free_sulfur_dioxide/ShapeShape?linear/linear_model/linear_model/free_sulfur_dioxide/ExpandDims*
T0*
_output_shapes
:

Hlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ś
Blinear/linear_model/linear_model/free_sulfur_dioxide/strided_sliceStridedSlice:linear/linear_model/linear_model/free_sulfur_dioxide/ShapeHlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stackJlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stack_1Jlinear/linear_model/linear_model/free_sulfur_dioxide/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

Dlinear/linear_model/linear_model/free_sulfur_dioxide/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :

Blinear/linear_model/linear_model/free_sulfur_dioxide/Reshape/shapePackBlinear/linear_model/linear_model/free_sulfur_dioxide/strided_sliceDlinear/linear_model/linear_model/free_sulfur_dioxide/Reshape/shape/1*
T0*
N*
_output_shapes
:
ţ
<linear/linear_model/linear_model/free_sulfur_dioxide/ReshapeReshape?linear/linear_model/linear_model/free_sulfur_dioxide/ExpandDimsBlinear/linear_model/linear_model/free_sulfur_dioxide/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ľ
>linear/linear_model/free_sulfur_dioxide/weights/ReadVariableOpReadVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
¤
/linear/linear_model/free_sulfur_dioxide/weightsIdentity>linear/linear_model/free_sulfur_dioxide/weights/ReadVariableOp*
T0*
_output_shapes

:
ě
Alinear/linear_model/linear_model/free_sulfur_dioxide/weighted_sumMatMul<linear/linear_model/linear_model/free_sulfur_dioxide/Reshape/linear/linear_model/free_sulfur_dioxide/weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ć
7linear/linear_model/pH/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *8
_class.
,*loc:@linear/linear_model/pH/weights/part_0
ŕ
%linear/linear_model/pH/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *6
shared_name'%linear/linear_model/pH/weights/part_0*8
_class.
,*loc:@linear/linear_model/pH/weights/part_0

Flinear/linear_model/pH/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp%linear/linear_model/pH/weights/part_0*
_output_shapes
: 
ç
,linear/linear_model/pH/weights/part_0/AssignAssignVariableOp%linear/linear_model/pH/weights/part_07linear/linear_model/pH/weights/part_0/Initializer/zeros*8
_class.
,*loc:@linear/linear_model/pH/weights/part_0*
dtype0
Ů
9linear/linear_model/pH/weights/part_0/Read/ReadVariableOpReadVariableOp%linear/linear_model/pH/weights/part_0*8
_class.
,*loc:@linear/linear_model/pH/weights/part_0*
dtype0*
_output_shapes

:
}
2linear/linear_model/linear_model/pH/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ą
.linear/linear_model/linear_model/pH/ExpandDims
ExpandDimsPlaceholder_82linear/linear_model/linear_model/pH/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)linear/linear_model/linear_model/pH/ShapeShape.linear/linear_model/linear_model/pH/ExpandDims*
T0*
_output_shapes
:

7linear/linear_model/linear_model/pH/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9linear/linear_model/linear_model/pH/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model/linear_model/pH/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
á
1linear/linear_model/linear_model/pH/strided_sliceStridedSlice)linear/linear_model/linear_model/pH/Shape7linear/linear_model/linear_model/pH/strided_slice/stack9linear/linear_model/linear_model/pH/strided_slice/stack_19linear/linear_model/linear_model/pH/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
u
3linear/linear_model/linear_model/pH/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
1linear/linear_model/linear_model/pH/Reshape/shapePack1linear/linear_model/linear_model/pH/strided_slice3linear/linear_model/linear_model/pH/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ë
+linear/linear_model/linear_model/pH/ReshapeReshape.linear/linear_model/linear_model/pH/ExpandDims1linear/linear_model/linear_model/pH/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-linear/linear_model/pH/weights/ReadVariableOpReadVariableOp%linear/linear_model/pH/weights/part_0*
dtype0*
_output_shapes

:

linear/linear_model/pH/weightsIdentity-linear/linear_model/pH/weights/ReadVariableOp*
T0*
_output_shapes

:
š
0linear/linear_model/linear_model/pH/weighted_sumMatMul+linear/linear_model/linear_model/pH/Reshapelinear/linear_model/pH/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Clinear/linear_model/residual_sugar/weights/part_0/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@linear/linear_model/residual_sugar/weights/part_0*
dtype0*
_output_shapes

:

1linear/linear_model/residual_sugar/weights/part_0VarHandleOp*B
shared_name31linear/linear_model/residual_sugar/weights/part_0*D
_class:
86loc:@linear/linear_model/residual_sugar/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
ł
Rlinear/linear_model/residual_sugar/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp1linear/linear_model/residual_sugar/weights/part_0*
_output_shapes
: 

8linear/linear_model/residual_sugar/weights/part_0/AssignAssignVariableOp1linear/linear_model/residual_sugar/weights/part_0Clinear/linear_model/residual_sugar/weights/part_0/Initializer/zeros*D
_class:
86loc:@linear/linear_model/residual_sugar/weights/part_0*
dtype0
ý
Elinear/linear_model/residual_sugar/weights/part_0/Read/ReadVariableOpReadVariableOp1linear/linear_model/residual_sugar/weights/part_0*D
_class:
86loc:@linear/linear_model/residual_sugar/weights/part_0*
dtype0*
_output_shapes

:

>linear/linear_model/linear_model/residual_sugar/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
É
:linear/linear_model/linear_model/residual_sugar/ExpandDims
ExpandDimsPlaceholder_3>linear/linear_model/linear_model/residual_sugar/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5linear/linear_model/linear_model/residual_sugar/ShapeShape:linear/linear_model/linear_model/residual_sugar/ExpandDims*
T0*
_output_shapes
:

Clinear/linear_model/linear_model/residual_sugar/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/residual_sugar/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/residual_sugar/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

=linear/linear_model/linear_model/residual_sugar/strided_sliceStridedSlice5linear/linear_model/linear_model/residual_sugar/ShapeClinear/linear_model/linear_model/residual_sugar/strided_slice/stackElinear/linear_model/linear_model/residual_sugar/strided_slice/stack_1Elinear/linear_model/linear_model/residual_sugar/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0

?linear/linear_model/linear_model/residual_sugar/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ó
=linear/linear_model/linear_model/residual_sugar/Reshape/shapePack=linear/linear_model/linear_model/residual_sugar/strided_slice?linear/linear_model/linear_model/residual_sugar/Reshape/shape/1*
T0*
N*
_output_shapes
:
ď
7linear/linear_model/linear_model/residual_sugar/ReshapeReshape:linear/linear_model/linear_model/residual_sugar/ExpandDims=linear/linear_model/linear_model/residual_sugar/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ť
9linear/linear_model/residual_sugar/weights/ReadVariableOpReadVariableOp1linear/linear_model/residual_sugar/weights/part_0*
dtype0*
_output_shapes

:

*linear/linear_model/residual_sugar/weightsIdentity9linear/linear_model/residual_sugar/weights/ReadVariableOp*
T0*
_output_shapes

:
Ý
<linear/linear_model/linear_model/residual_sugar/weighted_sumMatMul7linear/linear_model/linear_model/residual_sugar/Reshape*linear/linear_model/residual_sugar/weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ô
>linear/linear_model/sulphates/weights/part_0/Initializer/zerosConst*
valueB*    *?
_class5
31loc:@linear/linear_model/sulphates/weights/part_0*
dtype0*
_output_shapes

:
ő
,linear/linear_model/sulphates/weights/part_0VarHandleOp*=
shared_name.,linear/linear_model/sulphates/weights/part_0*?
_class5
31loc:@linear/linear_model/sulphates/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
Š
Mlinear/linear_model/sulphates/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/sulphates/weights/part_0*
_output_shapes
: 

3linear/linear_model/sulphates/weights/part_0/AssignAssignVariableOp,linear/linear_model/sulphates/weights/part_0>linear/linear_model/sulphates/weights/part_0/Initializer/zeros*?
_class5
31loc:@linear/linear_model/sulphates/weights/part_0*
dtype0
î
@linear/linear_model/sulphates/weights/part_0/Read/ReadVariableOpReadVariableOp,linear/linear_model/sulphates/weights/part_0*?
_class5
31loc:@linear/linear_model/sulphates/weights/part_0*
dtype0*
_output_shapes

:

9linear/linear_model/linear_model/sulphates/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ż
5linear/linear_model/linear_model/sulphates/ExpandDims
ExpandDimsPlaceholder_99linear/linear_model/linear_model/sulphates/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0linear/linear_model/linear_model/sulphates/ShapeShape5linear/linear_model/linear_model/sulphates/ExpandDims*
T0*
_output_shapes
:

>linear/linear_model/linear_model/sulphates/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/sulphates/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/sulphates/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

8linear/linear_model/linear_model/sulphates/strided_sliceStridedSlice0linear/linear_model/linear_model/sulphates/Shape>linear/linear_model/linear_model/sulphates/strided_slice/stack@linear/linear_model/linear_model/sulphates/strided_slice/stack_1@linear/linear_model/linear_model/sulphates/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
|
:linear/linear_model/linear_model/sulphates/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ä
8linear/linear_model/linear_model/sulphates/Reshape/shapePack8linear/linear_model/linear_model/sulphates/strided_slice:linear/linear_model/linear_model/sulphates/Reshape/shape/1*
N*
_output_shapes
:*
T0
ŕ
2linear/linear_model/linear_model/sulphates/ReshapeReshape5linear/linear_model/linear_model/sulphates/ExpandDims8linear/linear_model/linear_model/sulphates/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ą
4linear/linear_model/sulphates/weights/ReadVariableOpReadVariableOp,linear/linear_model/sulphates/weights/part_0*
dtype0*
_output_shapes

:

%linear/linear_model/sulphates/weightsIdentity4linear/linear_model/sulphates/weights/ReadVariableOp*
_output_shapes

:*
T0
Î
7linear/linear_model/linear_model/sulphates/weighted_sumMatMul2linear/linear_model/linear_model/sulphates/Reshape%linear/linear_model/sulphates/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
Ilinear/linear_model/total_sulfur_dioxide/weights/part_0/Initializer/zerosConst*
valueB*    *J
_class@
><loc:@linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:

7linear/linear_model/total_sulfur_dioxide/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *H
shared_name97linear/linear_model/total_sulfur_dioxide/weights/part_0*J
_class@
><loc:@linear/linear_model/total_sulfur_dioxide/weights/part_0
ż
Xlinear/linear_model/total_sulfur_dioxide/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/total_sulfur_dioxide/weights/part_0*
_output_shapes
: 
Ż
>linear/linear_model/total_sulfur_dioxide/weights/part_0/AssignAssignVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0Ilinear/linear_model/total_sulfur_dioxide/weights/part_0/Initializer/zeros*J
_class@
><loc:@linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0

Klinear/linear_model/total_sulfur_dioxide/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0*J
_class@
><loc:@linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:

Dlinear/linear_model/linear_model/total_sulfur_dioxide/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ő
@linear/linear_model/linear_model/total_sulfur_dioxide/ExpandDims
ExpandDimsPlaceholder_6Dlinear/linear_model/linear_model/total_sulfur_dioxide/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
;linear/linear_model/linear_model/total_sulfur_dioxide/ShapeShape@linear/linear_model/linear_model/total_sulfur_dioxide/ExpandDims*
T0*
_output_shapes
:

Ilinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Klinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ť
Clinear/linear_model/linear_model/total_sulfur_dioxide/strided_sliceStridedSlice;linear/linear_model/linear_model/total_sulfur_dioxide/ShapeIlinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stackKlinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stack_1Klinear/linear_model/linear_model/total_sulfur_dioxide/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0

Elinear/linear_model/linear_model/total_sulfur_dioxide/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Clinear/linear_model/linear_model/total_sulfur_dioxide/Reshape/shapePackClinear/linear_model/linear_model/total_sulfur_dioxide/strided_sliceElinear/linear_model/linear_model/total_sulfur_dioxide/Reshape/shape/1*
T0*
N*
_output_shapes
:

=linear/linear_model/linear_model/total_sulfur_dioxide/ReshapeReshape@linear/linear_model/linear_model/total_sulfur_dioxide/ExpandDimsClinear/linear_model/linear_model/total_sulfur_dioxide/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
?linear/linear_model/total_sulfur_dioxide/weights/ReadVariableOpReadVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
Ś
0linear/linear_model/total_sulfur_dioxide/weightsIdentity?linear/linear_model/total_sulfur_dioxide/weights/ReadVariableOp*
T0*
_output_shapes

:
ď
Blinear/linear_model/linear_model/total_sulfur_dioxide/weighted_sumMatMul=linear/linear_model/linear_model/total_sulfur_dioxide/Reshape0linear/linear_model/total_sulfur_dioxide/weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
â
Elinear/linear_model/volatile_acidity/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *F
_class<
:8loc:@linear/linear_model/volatile_acidity/weights/part_0

3linear/linear_model/volatile_acidity/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *D
shared_name53linear/linear_model/volatile_acidity/weights/part_0*F
_class<
:8loc:@linear/linear_model/volatile_acidity/weights/part_0
ˇ
Tlinear/linear_model/volatile_acidity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp3linear/linear_model/volatile_acidity/weights/part_0*
_output_shapes
: 

:linear/linear_model/volatile_acidity/weights/part_0/AssignAssignVariableOp3linear/linear_model/volatile_acidity/weights/part_0Elinear/linear_model/volatile_acidity/weights/part_0/Initializer/zeros*F
_class<
:8loc:@linear/linear_model/volatile_acidity/weights/part_0*
dtype0

Glinear/linear_model/volatile_acidity/weights/part_0/Read/ReadVariableOpReadVariableOp3linear/linear_model/volatile_acidity/weights/part_0*F
_class<
:8loc:@linear/linear_model/volatile_acidity/weights/part_0*
dtype0*
_output_shapes

:

@linear/linear_model/linear_model/volatile_acidity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Í
<linear/linear_model/linear_model/volatile_acidity/ExpandDims
ExpandDimsPlaceholder_1@linear/linear_model/linear_model/volatile_acidity/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
7linear/linear_model/linear_model/volatile_acidity/ShapeShape<linear/linear_model/linear_model/volatile_acidity/ExpandDims*
T0*
_output_shapes
:

Elinear/linear_model/linear_model/volatile_acidity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Glinear/linear_model/linear_model/volatile_acidity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Glinear/linear_model/linear_model/volatile_acidity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
§
?linear/linear_model/linear_model/volatile_acidity/strided_sliceStridedSlice7linear/linear_model/linear_model/volatile_acidity/ShapeElinear/linear_model/linear_model/volatile_acidity/strided_slice/stackGlinear/linear_model/linear_model/volatile_acidity/strided_slice/stack_1Glinear/linear_model/linear_model/volatile_acidity/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

Alinear/linear_model/linear_model/volatile_acidity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ů
?linear/linear_model/linear_model/volatile_acidity/Reshape/shapePack?linear/linear_model/linear_model/volatile_acidity/strided_sliceAlinear/linear_model/linear_model/volatile_acidity/Reshape/shape/1*
T0*
N*
_output_shapes
:
ő
9linear/linear_model/linear_model/volatile_acidity/ReshapeReshape<linear/linear_model/linear_model/volatile_acidity/ExpandDims?linear/linear_model/linear_model/volatile_acidity/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
;linear/linear_model/volatile_acidity/weights/ReadVariableOpReadVariableOp3linear/linear_model/volatile_acidity/weights/part_0*
dtype0*
_output_shapes

:

,linear/linear_model/volatile_acidity/weightsIdentity;linear/linear_model/volatile_acidity/weights/ReadVariableOp*
T0*
_output_shapes

:
ă
>linear/linear_model/linear_model/volatile_acidity/weighted_sumMatMul9linear/linear_model/linear_model/volatile_acidity/Reshape,linear/linear_model/volatile_acidity/weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

5linear/linear_model/linear_model/weighted_sum_no_biasAddN5linear/linear_model/linear_model/alcohol/weighted_sum7linear/linear_model/linear_model/chlorides/weighted_sum9linear/linear_model/linear_model/citric_acid/weighted_sum5linear/linear_model/linear_model/density/weighted_sum;linear/linear_model/linear_model/fixed_acidity/weighted_sumAlinear/linear_model/linear_model/free_sulfur_dioxide/weighted_sum0linear/linear_model/linear_model/pH/weighted_sum<linear/linear_model/linear_model/residual_sugar/weighted_sum7linear/linear_model/linear_model/sulphates/weighted_sumBlinear/linear_model/linear_model/total_sulfur_dioxide/weighted_sum>linear/linear_model/linear_model/volatile_acidity/weighted_sum*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
â
'linear/linear_model/bias_weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
shape:

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
ď
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
Ű
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
Ă
-linear/linear_model/linear_model/weighted_sumBiasAdd5linear/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 

linear/Reshape/ReadVariableOpReadVariableOp*linear/linear_model/alcohol/weights/part_0*
dtype0*
_output_shapes

:
g
linear/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s
linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
T0*
_output_shapes
:

linear/Reshape_1/ReadVariableOpReadVariableOp,linear/linear_model/chlorides/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
y
linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
_output_shapes
:*
T0

linear/Reshape_2/ReadVariableOpReadVariableOp.linear/linear_model/citric_acid/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
T0*
_output_shapes
:

linear/Reshape_3/ReadVariableOpReadVariableOp*linear/linear_model/density/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_3/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_3Reshapelinear/Reshape_3/ReadVariableOplinear/Reshape_3/shape*
T0*
_output_shapes
:

linear/Reshape_4/ReadVariableOpReadVariableOp0linear/linear_model/fixed_acidity/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_4/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_4Reshapelinear/Reshape_4/ReadVariableOplinear/Reshape_4/shape*
_output_shapes
:*
T0

linear/Reshape_5/ReadVariableOpReadVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
y
linear/Reshape_5Reshapelinear/Reshape_5/ReadVariableOplinear/Reshape_5/shape*
_output_shapes
:*
T0

linear/Reshape_6/ReadVariableOpReadVariableOp%linear/linear_model/pH/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_6/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_6Reshapelinear/Reshape_6/ReadVariableOplinear/Reshape_6/shape*
T0*
_output_shapes
:

linear/Reshape_7/ReadVariableOpReadVariableOp1linear/linear_model/residual_sugar/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
y
linear/Reshape_7Reshapelinear/Reshape_7/ReadVariableOplinear/Reshape_7/shape*
T0*
_output_shapes
:

linear/Reshape_8/ReadVariableOpReadVariableOp,linear/linear_model/sulphates/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_8/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_8Reshapelinear/Reshape_8/ReadVariableOplinear/Reshape_8/shape*
_output_shapes
:*
T0

linear/Reshape_9/ReadVariableOpReadVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_9/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_9Reshapelinear/Reshape_9/ReadVariableOplinear/Reshape_9/shape*
T0*
_output_shapes
:

 linear/Reshape_10/ReadVariableOpReadVariableOp3linear/linear_model/volatile_acidity/weights/part_0*
dtype0*
_output_shapes

:
j
linear/Reshape_10/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
|
linear/Reshape_10Reshape linear/Reshape_10/ReadVariableOplinear/Reshape_10/shape*
T0*
_output_shapes
:
T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
 
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/Reshape_8linear/Reshape_9linear/Reshape_10linear/concat/axis*
T0*
N*
_output_shapes
:
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
r
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes
:
q
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*

DstT0*
_output_shapes
:
d
linear/zero_fraction/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*
dtype0*
_output_shapes
: *0
value'B% Blinear/fraction_of_zero_weights

linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
u
linear/head/logits/ShapeShape-linear/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/Read/ReadVariableOpReadVariableOp*linear/linear_model/alcohol/weights/part_0*
dtype0*
_output_shapes

:
\
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes

:
b
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes

:
~
save/Read_1/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
\
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes
:

save/Read_2/ReadVariableOpReadVariableOp,linear/linear_model/chlorides/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/Read_3/ReadVariableOpReadVariableOp.linear/linear_model/citric_acid/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:

save/Read_4/ReadVariableOpReadVariableOp*linear/linear_model/density/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:

save/Read_5/ReadVariableOpReadVariableOp0linear/linear_model/fixed_acidity/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:

save/Read_6/ReadVariableOpReadVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes

:

save/Read_7/ReadVariableOpReadVariableOp%linear/linear_model/pH/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:

save/Read_8/ReadVariableOpReadVariableOp1linear/linear_model/residual_sugar/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:

save/Read_9/ReadVariableOpReadVariableOp,linear/linear_model/sulphates/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:

save/Read_10/ReadVariableOpReadVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes

:

save/Read_11/ReadVariableOpReadVariableOp3linear/linear_model/volatile_acidity/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_57b81e5f73944940a675ec926523ef80/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_12/ReadVariableOpReadVariableOp*linear/linear_model/alcohol/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_24Identitysave/Read_12/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:

save/Read_13/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_26Identitysave/Read_13/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes
:

save/Read_14/ReadVariableOpReadVariableOp,linear/linear_model/chlorides/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_28Identitysave/Read_14/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
_output_shapes

:*
T0

save/Read_15/ReadVariableOpReadVariableOp.linear/linear_model/citric_acid/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_30Identitysave/Read_15/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:

save/Read_16/ReadVariableOpReadVariableOp*linear/linear_model/density/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_32Identitysave/Read_16/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
_output_shapes

:*
T0

save/Read_17/ReadVariableOpReadVariableOp0linear/linear_model/fixed_acidity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_34Identitysave/Read_17/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:
Ą
save/Read_18/ReadVariableOpReadVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_36Identitysave/Read_18/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:

save/Read_19/ReadVariableOpReadVariableOp%linear/linear_model/pH/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_38Identitysave/Read_19/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
_output_shapes

:*
T0

save/Read_20/ReadVariableOpReadVariableOp1linear/linear_model/residual_sugar/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes

:

save/Read_21/ReadVariableOpReadVariableOp,linear/linear_model/sulphates/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:
˘
save/Read_22/ReadVariableOpReadVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes

:

save/Read_23/ReadVariableOpReadVariableOp3linear/linear_model/volatile_acidity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:
Ţ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
valueöBóB#linear/linear_model/alcohol/weightsB linear/linear_model/bias_weightsB%linear/linear_model/chlorides/weightsB'linear/linear_model/citric_acid/weightsB#linear/linear_model/density/weightsB)linear/linear_model/fixed_acidity/weightsB/linear/linear_model/free_sulfur_dioxide/weightsBlinear/linear_model/pH/weightsB*linear/linear_model/residual_sugar/weightsB%linear/linear_model/sulphates/weightsB0linear/linear_model/total_sulfur_dioxide/weightsB,linear/linear_model/volatile_acidity/weights*
dtype0*
_output_shapes
:

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*Ť
valueĄBB1 1 0,1:0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
î
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_25save/Identity_27save/Identity_29save/Identity_31save/Identity_33save/Identity_35save/Identity_37save/Identity_39save/Identity_41save/Identity_43save/Identity_45save/Identity_47"/device:CPU:0*
dtypes
2
¨
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
Ô
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
¨
save/Identity_48Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
_output_shapes
: *
T0	*
_class
loc:@global_step
(
save/restore_shardNoOp^save/Assign
á
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
valueöBóB#linear/linear_model/alcohol/weightsB linear/linear_model/bias_weightsB%linear/linear_model/chlorides/weightsB'linear/linear_model/citric_acid/weightsB#linear/linear_model/density/weightsB)linear/linear_model/fixed_acidity/weightsB/linear/linear_model/free_sulfur_dioxide/weightsBlinear/linear_model/pH/weightsB*linear/linear_model/residual_sugar/weightsB%linear/linear_model/sulphates/weightsB0linear/linear_model/total_sulfur_dioxide/weightsB,linear/linear_model/volatile_acidity/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*Ť
valueĄBB1 1 0,1:0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
Ą
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapesv
t::::::::::::*
dtypes
2
f
save/Identity_49Identitysave/RestoreV2_1"/device:CPU:0*
_output_shapes

:*
T0

save/AssignVariableOpAssignVariableOp*linear/linear_model/alcohol/weights/part_0save/Identity_49"/device:CPU:0*
dtype0
d
save/Identity_50Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOp_1AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_50"/device:CPU:0*
dtype0
h
save/Identity_51Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_2AssignVariableOp,linear/linear_model/chlorides/weights/part_0save/Identity_51"/device:CPU:0*
dtype0
h
save/Identity_52Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_3AssignVariableOp.linear/linear_model/citric_acid/weights/part_0save/Identity_52"/device:CPU:0*
dtype0
h
save/Identity_53Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_4AssignVariableOp*linear/linear_model/density/weights/part_0save/Identity_53"/device:CPU:0*
dtype0
h
save/Identity_54Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_5AssignVariableOp0linear/linear_model/fixed_acidity/weights/part_0save/Identity_54"/device:CPU:0*
dtype0
h
save/Identity_55Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_6AssignVariableOp6linear/linear_model/free_sulfur_dioxide/weights/part_0save/Identity_55"/device:CPU:0*
dtype0
h
save/Identity_56Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_7AssignVariableOp%linear/linear_model/pH/weights/part_0save/Identity_56"/device:CPU:0*
dtype0
h
save/Identity_57Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_8AssignVariableOp1linear/linear_model/residual_sugar/weights/part_0save/Identity_57"/device:CPU:0*
dtype0
h
save/Identity_58Identitysave/RestoreV2_1:9"/device:CPU:0*
_output_shapes

:*
T0

save/AssignVariableOp_9AssignVariableOp,linear/linear_model/sulphates/weights/part_0save/Identity_58"/device:CPU:0*
dtype0
i
save/Identity_59Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_10AssignVariableOp7linear/linear_model/total_sulfur_dioxide/weights/part_0save/Identity_59"/device:CPU:0*
dtype0
i
save/Identity_60Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_11AssignVariableOp3linear/linear_model/volatile_acidity/weights/part_0save/Identity_60"/device:CPU:0*
dtype0
ă
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_48:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"Ű
model_variablesÇÄ

,linear/linear_model/alcohol/weights/part_0:01linear/linear_model/alcohol/weights/part_0/Assign@linear/linear_model/alcohol/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/alcohol/weights  "(2>linear/linear_model/alcohol/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/chlorides/weights/part_0:03linear/linear_model/chlorides/weights/part_0/AssignBlinear/linear_model/chlorides/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/chlorides/weights  "(2@linear/linear_model/chlorides/weights/part_0/Initializer/zeros:08
Ž
0linear/linear_model/citric_acid/weights/part_0:05linear/linear_model/citric_acid/weights/part_0/AssignDlinear/linear_model/citric_acid/weights/part_0/Read/ReadVariableOp:0"5
'linear/linear_model/citric_acid/weights  "(2Blinear/linear_model/citric_acid/weights/part_0/Initializer/zeros:08

,linear/linear_model/density/weights/part_0:01linear/linear_model/density/weights/part_0/Assign@linear/linear_model/density/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/density/weights  "(2>linear/linear_model/density/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/fixed_acidity/weights/part_0:07linear/linear_model/fixed_acidity/weights/part_0/AssignFlinear/linear_model/fixed_acidity/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/fixed_acidity/weights  "(2Dlinear/linear_model/fixed_acidity/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/free_sulfur_dioxide/weights/part_0:0=linear/linear_model/free_sulfur_dioxide/weights/part_0/AssignLlinear/linear_model/free_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/free_sulfur_dioxide/weights  "(2Jlinear/linear_model/free_sulfur_dioxide/weights/part_0/Initializer/zeros:08

'linear/linear_model/pH/weights/part_0:0,linear/linear_model/pH/weights/part_0/Assign;linear/linear_model/pH/weights/part_0/Read/ReadVariableOp:0",
linear/linear_model/pH/weights  "(29linear/linear_model/pH/weights/part_0/Initializer/zeros:08
˝
3linear/linear_model/residual_sugar/weights/part_0:08linear/linear_model/residual_sugar/weights/part_0/AssignGlinear/linear_model/residual_sugar/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/residual_sugar/weights  "(2Elinear/linear_model/residual_sugar/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/sulphates/weights/part_0:03linear/linear_model/sulphates/weights/part_0/AssignBlinear/linear_model/sulphates/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/sulphates/weights  "(2@linear/linear_model/sulphates/weights/part_0/Initializer/zeros:08
Ű
9linear/linear_model/total_sulfur_dioxide/weights/part_0:0>linear/linear_model/total_sulfur_dioxide/weights/part_0/AssignMlinear/linear_model/total_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/total_sulfur_dioxide/weights  "(2Klinear/linear_model/total_sulfur_dioxide/weights/part_0/Initializer/zeros:08
Ç
5linear/linear_model/volatile_acidity/weights/part_0:0:linear/linear_model/volatile_acidity/weights/part_0/AssignIlinear/linear_model/volatile_acidity/weights/part_0/Read/ReadVariableOp:0":
,linear/linear_model/volatile_acidity/weights  "(2Glinear/linear_model/volatile_acidity/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"ß
trainable_variablesÇÄ

,linear/linear_model/alcohol/weights/part_0:01linear/linear_model/alcohol/weights/part_0/Assign@linear/linear_model/alcohol/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/alcohol/weights  "(2>linear/linear_model/alcohol/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/chlorides/weights/part_0:03linear/linear_model/chlorides/weights/part_0/AssignBlinear/linear_model/chlorides/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/chlorides/weights  "(2@linear/linear_model/chlorides/weights/part_0/Initializer/zeros:08
Ž
0linear/linear_model/citric_acid/weights/part_0:05linear/linear_model/citric_acid/weights/part_0/AssignDlinear/linear_model/citric_acid/weights/part_0/Read/ReadVariableOp:0"5
'linear/linear_model/citric_acid/weights  "(2Blinear/linear_model/citric_acid/weights/part_0/Initializer/zeros:08

,linear/linear_model/density/weights/part_0:01linear/linear_model/density/weights/part_0/Assign@linear/linear_model/density/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/density/weights  "(2>linear/linear_model/density/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/fixed_acidity/weights/part_0:07linear/linear_model/fixed_acidity/weights/part_0/AssignFlinear/linear_model/fixed_acidity/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/fixed_acidity/weights  "(2Dlinear/linear_model/fixed_acidity/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/free_sulfur_dioxide/weights/part_0:0=linear/linear_model/free_sulfur_dioxide/weights/part_0/AssignLlinear/linear_model/free_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/free_sulfur_dioxide/weights  "(2Jlinear/linear_model/free_sulfur_dioxide/weights/part_0/Initializer/zeros:08

'linear/linear_model/pH/weights/part_0:0,linear/linear_model/pH/weights/part_0/Assign;linear/linear_model/pH/weights/part_0/Read/ReadVariableOp:0",
linear/linear_model/pH/weights  "(29linear/linear_model/pH/weights/part_0/Initializer/zeros:08
˝
3linear/linear_model/residual_sugar/weights/part_0:08linear/linear_model/residual_sugar/weights/part_0/AssignGlinear/linear_model/residual_sugar/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/residual_sugar/weights  "(2Elinear/linear_model/residual_sugar/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/sulphates/weights/part_0:03linear/linear_model/sulphates/weights/part_0/AssignBlinear/linear_model/sulphates/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/sulphates/weights  "(2@linear/linear_model/sulphates/weights/part_0/Initializer/zeros:08
Ű
9linear/linear_model/total_sulfur_dioxide/weights/part_0:0>linear/linear_model/total_sulfur_dioxide/weights/part_0/AssignMlinear/linear_model/total_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/total_sulfur_dioxide/weights  "(2Klinear/linear_model/total_sulfur_dioxide/weights/part_0/Initializer/zeros:08
Ç
5linear/linear_model/volatile_acidity/weights/part_0:0:linear/linear_model/volatile_acidity/weights/part_0/AssignIlinear/linear_model/volatile_acidity/weights/part_0/Read/ReadVariableOp:0":
,linear/linear_model/volatile_acidity/weights  "(2Glinear/linear_model/volatile_acidity/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"Ż
	variablesĄ
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0

,linear/linear_model/alcohol/weights/part_0:01linear/linear_model/alcohol/weights/part_0/Assign@linear/linear_model/alcohol/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/alcohol/weights  "(2>linear/linear_model/alcohol/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/chlorides/weights/part_0:03linear/linear_model/chlorides/weights/part_0/AssignBlinear/linear_model/chlorides/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/chlorides/weights  "(2@linear/linear_model/chlorides/weights/part_0/Initializer/zeros:08
Ž
0linear/linear_model/citric_acid/weights/part_0:05linear/linear_model/citric_acid/weights/part_0/AssignDlinear/linear_model/citric_acid/weights/part_0/Read/ReadVariableOp:0"5
'linear/linear_model/citric_acid/weights  "(2Blinear/linear_model/citric_acid/weights/part_0/Initializer/zeros:08

,linear/linear_model/density/weights/part_0:01linear/linear_model/density/weights/part_0/Assign@linear/linear_model/density/weights/part_0/Read/ReadVariableOp:0"1
#linear/linear_model/density/weights  "(2>linear/linear_model/density/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/fixed_acidity/weights/part_0:07linear/linear_model/fixed_acidity/weights/part_0/AssignFlinear/linear_model/fixed_acidity/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/fixed_acidity/weights  "(2Dlinear/linear_model/fixed_acidity/weights/part_0/Initializer/zeros:08
Ö
8linear/linear_model/free_sulfur_dioxide/weights/part_0:0=linear/linear_model/free_sulfur_dioxide/weights/part_0/AssignLlinear/linear_model/free_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/free_sulfur_dioxide/weights  "(2Jlinear/linear_model/free_sulfur_dioxide/weights/part_0/Initializer/zeros:08

'linear/linear_model/pH/weights/part_0:0,linear/linear_model/pH/weights/part_0/Assign;linear/linear_model/pH/weights/part_0/Read/ReadVariableOp:0",
linear/linear_model/pH/weights  "(29linear/linear_model/pH/weights/part_0/Initializer/zeros:08
˝
3linear/linear_model/residual_sugar/weights/part_0:08linear/linear_model/residual_sugar/weights/part_0/AssignGlinear/linear_model/residual_sugar/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/residual_sugar/weights  "(2Elinear/linear_model/residual_sugar/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/sulphates/weights/part_0:03linear/linear_model/sulphates/weights/part_0/AssignBlinear/linear_model/sulphates/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/sulphates/weights  "(2@linear/linear_model/sulphates/weights/part_0/Initializer/zeros:08
Ű
9linear/linear_model/total_sulfur_dioxide/weights/part_0:0>linear/linear_model/total_sulfur_dioxide/weights/part_0/AssignMlinear/linear_model/total_sulfur_dioxide/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/total_sulfur_dioxide/weights  "(2Klinear/linear_model/total_sulfur_dioxide/weights/part_0/Initializer/zeros:08
Ç
5linear/linear_model/volatile_acidity/weights/part_0:0:linear/linear_model/volatile_acidity/weights/part_0/AssignIlinear/linear_model/volatile_acidity/weights/part_0/Read/ReadVariableOp:0":
,linear/linear_model/volatile_acidity/weights  "(2Glinear/linear_model/volatile_acidity/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08*ľ
predictŠ
/
	sulphates"
Placeholder_9:0˙˙˙˙˙˙˙˙˙
1
fixed_acidity 
Placeholder:0˙˙˙˙˙˙˙˙˙
(
pH"
Placeholder_8:0˙˙˙˙˙˙˙˙˙
:
total_sulfur_dioxide"
Placeholder_6:0˙˙˙˙˙˙˙˙˙
/
	chlorides"
Placeholder_4:0˙˙˙˙˙˙˙˙˙
.
alcohol#
Placeholder_10:0˙˙˙˙˙˙˙˙˙
6
volatile_acidity"
Placeholder_1:0˙˙˙˙˙˙˙˙˙
1
citric_acid"
Placeholder_2:0˙˙˙˙˙˙˙˙˙
4
residual_sugar"
Placeholder_3:0˙˙˙˙˙˙˙˙˙
-
density"
Placeholder_7:0˙˙˙˙˙˙˙˙˙
9
free_sulfur_dioxide"
Placeholder_5:0˙˙˙˙˙˙˙˙˙U
predictionsF
/linear/linear_model/linear_model/weighted_sum:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict