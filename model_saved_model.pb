??
?(?(
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
8
Const
output"dtype"
valuetensor"
dtypetype
?
	DecodeCSV
records
record_defaults2OUT_TYPE
output2OUT_TYPE"%
OUT_TYPE
list(type)(0:	
2	"
field_delimstring,"
use_quote_delimbool("
na_valuestring "
select_cols	list(int)
 
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
#
	LogicalOr
x

y

z
?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
?
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
$
StringStrip	
input

output
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b58??

global_step/Initializer/zerosConst*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
value	B	 R 
k
global_step
VariableV2*
shape: *
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
?
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_output_shapes
: *
_class
loc:@global_step*
T0	
f
PlaceholderPlaceholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
d
DecodeCSV/record_defaults_0Const*
dtype0*
_output_shapes
:*
valueB
B 
d
DecodeCSV/record_defaults_1Const*
valueB
B *
dtype0*
_output_shapes
:
e
DecodeCSV/record_defaults_2Const*
_output_shapes
:*
dtype0*
valueB: 
d
DecodeCSV/record_defaults_3Const*
dtype0*
_output_shapes
:*
valueB
B 
d
DecodeCSV/record_defaults_4Const*
valueB
B *
dtype0*
_output_shapes
:
d
DecodeCSV/record_defaults_5Const*
dtype0*
valueB
B *
_output_shapes
:
?
	DecodeCSV	DecodeCSVPlaceholderDecodeCSV/record_defaults_0DecodeCSV/record_defaults_1DecodeCSV/record_defaults_2DecodeCSV/record_defaults_3DecodeCSV/record_defaults_4DecodeCSV/record_defaults_5*n
_output_shapes\
Z:?????????:?????????:?????????:?????????:?????????:?????????*
OUT_TYPE

2
L
StringStripStringStripDecodeCSV:3*#
_output_shapes
:?????????
L
StringStrip_1StringStrip	DecodeCSV*#
_output_shapes
:?????????
N
StringStrip_2StringStripDecodeCSV:1*#
_output_shapes
:?????????
N
StringStrip_3StringStripDecodeCSV:4*#
_output_shapes
:?????????
N
StringStrip_4StringStripDecodeCSV:5*#
_output_shapes
:?????????
S
ConstConst*
dtype0*
_output_shapes
:*
valueBBnokey
?
PlaceholderWithDefaultPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:?????????*
shape:?????????
Y
ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
r

ExpandDims
ExpandDimsPlaceholderWithDefaultExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Dlinear/linear_model/col_1_indicator/weights/part_0/Initializer/zerosConst*
dtype0*E
_class;
97loc:@linear/linear_model/col_1_indicator/weights/part_0*
valueB*    *
_output_shapes

:
?
2linear/linear_model/col_1_indicator/weights/part_0VarHandleOp*
_output_shapes
: *
dtype0*E
_class;
97loc:@linear/linear_model/col_1_indicator/weights/part_0*
shape
:*C
shared_name42linear/linear_model/col_1_indicator/weights/part_0
?
Slinear/linear_model/col_1_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/col_1_indicator/weights/part_0*
_output_shapes
: 
?
9linear/linear_model/col_1_indicator/weights/part_0/AssignAssignVariableOp2linear/linear_model/col_1_indicator/weights/part_0Dlinear/linear_model/col_1_indicator/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/col_1_indicator/weights/part_0*
dtype0
?
Flinear/linear_model/col_1_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/col_1_indicator/weights/part_0*
_output_shapes

:*
dtype0*E
_class;
97loc:@linear/linear_model/col_1_indicator/weights/part_0
?
Dlinear/linear_model/col_2_indicator/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *E
_class;
97loc:@linear/linear_model/col_2_indicator/weights/part_0
?
2linear/linear_model/col_2_indicator/weights/part_0VarHandleOp*E
_class;
97loc:@linear/linear_model/col_2_indicator/weights/part_0*C
shared_name42linear/linear_model/col_2_indicator/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
?
Slinear/linear_model/col_2_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/col_2_indicator/weights/part_0*
_output_shapes
: 
?
9linear/linear_model/col_2_indicator/weights/part_0/AssignAssignVariableOp2linear/linear_model/col_2_indicator/weights/part_0Dlinear/linear_model/col_2_indicator/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/col_2_indicator/weights/part_0*
dtype0
?
Flinear/linear_model/col_2_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/col_2_indicator/weights/part_0*E
_class;
97loc:@linear/linear_model/col_2_indicator/weights/part_0*
_output_shapes

:*
dtype0
?
Dlinear/linear_model/col_4_indicator/weights/part_0/Initializer/zerosConst*E
_class;
97loc:@linear/linear_model/col_4_indicator/weights/part_0*
dtype0*
valueBX*    *
_output_shapes

:X
?
2linear/linear_model/col_4_indicator/weights/part_0VarHandleOp*
shape
:X*
_output_shapes
: *E
_class;
97loc:@linear/linear_model/col_4_indicator/weights/part_0*C
shared_name42linear/linear_model/col_4_indicator/weights/part_0*
dtype0
?
Slinear/linear_model/col_4_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/col_4_indicator/weights/part_0*
_output_shapes
: 
?
9linear/linear_model/col_4_indicator/weights/part_0/AssignAssignVariableOp2linear/linear_model/col_4_indicator/weights/part_0Dlinear/linear_model/col_4_indicator/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/col_4_indicator/weights/part_0*
dtype0
?
Flinear/linear_model/col_4_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/col_4_indicator/weights/part_0*
dtype0*E
_class;
97loc:@linear/linear_model/col_4_indicator/weights/part_0*
_output_shapes

:X
?
Dlinear/linear_model/col_5_indicator/weights/part_0/Initializer/zerosConst*
valueBX*    *
dtype0*
_output_shapes

:X*E
_class;
97loc:@linear/linear_model/col_5_indicator/weights/part_0
?
2linear/linear_model/col_5_indicator/weights/part_0VarHandleOp*
_output_shapes
: *C
shared_name42linear/linear_model/col_5_indicator/weights/part_0*E
_class;
97loc:@linear/linear_model/col_5_indicator/weights/part_0*
shape
:X*
dtype0
?
Slinear/linear_model/col_5_indicator/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/col_5_indicator/weights/part_0*
_output_shapes
: 
?
9linear/linear_model/col_5_indicator/weights/part_0/AssignAssignVariableOp2linear/linear_model/col_5_indicator/weights/part_0Dlinear/linear_model/col_5_indicator/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/col_5_indicator/weights/part_0*
dtype0
?
Flinear/linear_model/col_5_indicator/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/col_5_indicator/weights/part_0*
_output_shapes

:X*
dtype0*E
_class;
97loc:@linear/linear_model/col_5_indicator/weights/part_0
?
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
?
'linear/linear_model/bias_weights/part_0VarHandleOp*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*
shape:*
dtype0
?
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
?
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
?
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
?
Llinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDims
ExpandDimsStringStrip_2Llinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDims\linear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Ulinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Tlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDimsUlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Ylinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/col_1_indicator/ExpandDims*
out_type0	*
T0*
_output_shapes
:
?
Plinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/ConstConst*
_output_shapes
:*
dtype0*!
valueBBmaleBfemale
?
Olinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
?
Vlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
?
Plinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/rangeRangeVlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/range/startOlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/SizeVlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/range/delta*
_output_shapes
:
?
Olinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/CastCastPlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
?
[linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/ConstConst*
valueB	 R
?????????*
dtype0	*
_output_shapes
: 
?
`linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/hash_tableHashTableV2*
	key_dtype0*
value_dtype0	*
_output_shapes
: 
?
tlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2`linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/hash_tablePlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/ConstOlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/Cast*	
Tin0*

Tout0	
?
alinear/linear_model/linear_model/linear_model/col_1_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2`linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/hash_tableTlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/values[linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:?????????*	
Tin0
?
Ylinear/linear_model/linear_model/linear_model/col_1_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
valueB	 R
?????????*
dtype0	
?
Klinear/linear_model/linear_model/linear_model/col_1_indicator/SparseToDenseSparseToDenseUlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/col_1_indicator/to_sparse_input/dense_shapealinear/linear_model/linear_model/linear_model/col_1_indicator/hash_table_Lookup/LookupTableFindV2Ylinear/linear_model/linear_model/linear_model/col_1_indicator/SparseToDense/default_value*'
_output_shapes
:?????????*
T0	*
Tindices0	
?
Klinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
?
Klinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/depthConst*
_output_shapes
: *
value	B :*
dtype0
?
Nlinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/on_valueConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Olinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Elinear/linear_model/linear_model/linear_model/col_1_indicator/one_hotOneHotKlinear/linear_model/linear_model/linear_model/col_1_indicator/SparseToDenseKlinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/depthNlinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/on_valueOlinear/linear_model/linear_model/linear_model/col_1_indicator/one_hot/off_value*+
_output_shapes
:?????????*
T0
?
Slinear/linear_model/linear_model/linear_model/col_1_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Alinear/linear_model/linear_model/linear_model/col_1_indicator/SumSumElinear/linear_model/linear_model/linear_model/col_1_indicator/one_hotSlinear/linear_model/linear_model/linear_model/col_1_indicator/Sum/reduction_indices*'
_output_shapes
:?????????*
T0
?
Clinear/linear_model/linear_model/linear_model/col_1_indicator/ShapeShapeAlinear/linear_model/linear_model/linear_model/col_1_indicator/Sum*
T0*
_output_shapes
:
?
Qlinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
?
Slinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Slinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_1_indicator/strided_sliceStridedSliceClinear/linear_model/linear_model/linear_model/col_1_indicator/ShapeQlinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stackSlinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/col_1_indicator/strided_slice/stack_2*
Index0*
shrink_axis_mask*
_output_shapes
: *
T0
?
Mlinear/linear_model/linear_model/linear_model/col_1_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_1_indicator/Reshape/shapePackKlinear/linear_model/linear_model/linear_model/col_1_indicator/strided_sliceMlinear/linear_model/linear_model/linear_model/col_1_indicator/Reshape/shape/1*
_output_shapes
:*
T0*
N
?
Elinear/linear_model/linear_model/linear_model/col_1_indicator/ReshapeReshapeAlinear/linear_model/linear_model/linear_model/col_1_indicator/SumKlinear/linear_model/linear_model/linear_model/col_1_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
:linear/linear_model/col_1_indicator/weights/ReadVariableOpReadVariableOp2linear/linear_model/col_1_indicator/weights/part_0*
_output_shapes

:*
dtype0
?
+linear/linear_model/col_1_indicator/weightsIdentity:linear/linear_model/col_1_indicator/weights/ReadVariableOp*
_output_shapes

:*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_1_indicator/weighted_sumMatMulElinear/linear_model/linear_model/linear_model/col_1_indicator/Reshape+linear/linear_model/col_1_indicator/weights*'
_output_shapes
:?????????*
T0
?
Llinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDims
ExpandDimsDecodeCSV:2Llinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
Vlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDims\linear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Ulinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Tlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDimsUlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/indices*
Tindices0	*#
_output_shapes
:?????????*
Tparams0
?
Ylinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/col_2_indicator/ExpandDims*
out_type0	*
T0*
_output_shapes
:
?
Dlinear/linear_model/linear_model/linear_model/col_2_indicator/valuesCastTlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/values*

DstT0	*#
_output_shapes
:?????????*

SrcT0
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
?
Ilinear/linear_model/linear_model/linear_model/col_2_indicator/num_bucketsCastKlinear/linear_model/linear_model/linear_model/col_2_indicator/num_buckets/x*
_output_shapes
: *

SrcT0*

DstT0	
?
Dlinear/linear_model/linear_model/linear_model/col_2_indicator/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
?
Blinear/linear_model/linear_model/linear_model/col_2_indicator/zeroCastDlinear/linear_model/linear_model/linear_model/col_2_indicator/zero/x*

SrcT0*

DstT0	*
_output_shapes
: 
?
Blinear/linear_model/linear_model/linear_model/col_2_indicator/LessLessDlinear/linear_model/linear_model/linear_model/col_2_indicator/valuesBlinear/linear_model/linear_model/linear_model/col_2_indicator/zero*
T0	*#
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_2_indicator/GreaterEqualGreaterEqualDlinear/linear_model/linear_model/linear_model/col_2_indicator/valuesIlinear/linear_model/linear_model/linear_model/col_2_indicator/num_buckets*
T0	*#
_output_shapes
:?????????
?
Jlinear/linear_model/linear_model/linear_model/col_2_indicator/out_of_range	LogicalOrBlinear/linear_model/linear_model/linear_model/col_2_indicator/LessJlinear/linear_model/linear_model/linear_model/col_2_indicator/GreaterEqual*#
_output_shapes
:?????????
?
Clinear/linear_model/linear_model/linear_model/col_2_indicator/ShapeShapeDlinear/linear_model/linear_model/linear_model/col_2_indicator/values*
T0	*
_output_shapes
:
?
Dlinear/linear_model/linear_model/linear_model/col_2_indicator/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
?
Blinear/linear_model/linear_model/linear_model/col_2_indicator/CastCastDlinear/linear_model/linear_model/linear_model/col_2_indicator/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Llinear/linear_model/linear_model/linear_model/col_2_indicator/default_valuesFillClinear/linear_model/linear_model/linear_model/col_2_indicator/ShapeBlinear/linear_model/linear_model/linear_model/col_2_indicator/Cast*#
_output_shapes
:?????????*
T0	
?
Dlinear/linear_model/linear_model/linear_model/col_2_indicator/SelectSelectJlinear/linear_model/linear_model/linear_model/col_2_indicator/out_of_rangeLlinear/linear_model/linear_model/linear_model/col_2_indicator/default_valuesDlinear/linear_model/linear_model/linear_model/col_2_indicator/values*
T0	*#
_output_shapes
:?????????
?
Ylinear/linear_model/linear_model/linear_model/col_2_indicator/SparseToDense/default_valueConst*
valueB	 R
?????????*
dtype0	*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/SparseToDenseSparseToDenseUlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/col_2_indicator/to_sparse_input/dense_shapeDlinear/linear_model/linear_model/linear_model/col_2_indicator/SelectYlinear/linear_model/linear_model/linear_model/col_2_indicator/SparseToDense/default_value*'
_output_shapes
:?????????*
T0	*
Tindices0	
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Mlinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
?
Nlinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/on_valueConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Olinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/off_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_2_indicator/one_hotOneHotKlinear/linear_model/linear_model/linear_model/col_2_indicator/SparseToDenseKlinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/depthNlinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/on_valueOlinear/linear_model/linear_model/linear_model/col_2_indicator/one_hot/off_value*
T0*+
_output_shapes
:?????????
?
Slinear/linear_model/linear_model/linear_model/col_2_indicator/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Alinear/linear_model/linear_model/linear_model/col_2_indicator/SumSumElinear/linear_model/linear_model/linear_model/col_2_indicator/one_hotSlinear/linear_model/linear_model/linear_model/col_2_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Elinear/linear_model/linear_model/linear_model/col_2_indicator/Shape_1ShapeAlinear/linear_model/linear_model/linear_model/col_2_indicator/Sum*
T0*
_output_shapes
:
?
Qlinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Slinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Slinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/strided_sliceStridedSliceElinear/linear_model/linear_model/linear_model/col_2_indicator/Shape_1Qlinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stackSlinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/col_2_indicator/strided_slice/stack_2*
Index0*
_output_shapes
: *
T0*
shrink_axis_mask
?
Mlinear/linear_model/linear_model/linear_model/col_2_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_2_indicator/Reshape/shapePackKlinear/linear_model/linear_model/linear_model/col_2_indicator/strided_sliceMlinear/linear_model/linear_model/linear_model/col_2_indicator/Reshape/shape/1*
T0*
_output_shapes
:*
N
?
Elinear/linear_model/linear_model/linear_model/col_2_indicator/ReshapeReshapeAlinear/linear_model/linear_model/linear_model/col_2_indicator/SumKlinear/linear_model/linear_model/linear_model/col_2_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
:linear/linear_model/col_2_indicator/weights/ReadVariableOpReadVariableOp2linear/linear_model/col_2_indicator/weights/part_0*
dtype0*
_output_shapes

:
?
+linear/linear_model/col_2_indicator/weightsIdentity:linear/linear_model/col_2_indicator/weights/ReadVariableOp*
_output_shapes

:*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_2_indicator/weighted_sumMatMulElinear/linear_model/linear_model/linear_model/col_2_indicator/Reshape+linear/linear_model/col_2_indicator/weights*
T0*'
_output_shapes
:?????????
?
Llinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Hlinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDims
ExpandDimsStringStrip_3Llinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDims/dim*'
_output_shapes
:?????????*
T0
?
\linear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
?
Vlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDims\linear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:?????????
?
Ulinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Tlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDimsUlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/indices*#
_output_shapes
:?????????*
Tindices0	*
Tparams0
?
Ylinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/col_4_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	
?
Dlinear/linear_model/linear_model/linear_model/col_4_indicator/lookupStringToHashBucketFastTlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/values*
num_bucketsX*#
_output_shapes
:?????????
?
Ylinear/linear_model/linear_model/linear_model/col_4_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Klinear/linear_model/linear_model/linear_model/col_4_indicator/SparseToDenseSparseToDenseUlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/col_4_indicator/to_sparse_input/dense_shapeDlinear/linear_model/linear_model/linear_model/col_4_indicator/lookupYlinear/linear_model/linear_model/linear_model/col_4_indicator/SparseToDense/default_value*'
_output_shapes
:?????????*
T0	*
Tindices0	
?
Klinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/ConstConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Mlinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/depthConst*
value	B :X*
dtype0*
_output_shapes
: 
?
Nlinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Olinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/off_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
Elinear/linear_model/linear_model/linear_model/col_4_indicator/one_hotOneHotKlinear/linear_model/linear_model/linear_model/col_4_indicator/SparseToDenseKlinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/depthNlinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/on_valueOlinear/linear_model/linear_model/linear_model/col_4_indicator/one_hot/off_value*+
_output_shapes
:?????????X*
T0
?
Slinear/linear_model/linear_model/linear_model/col_4_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?
Alinear/linear_model/linear_model/linear_model/col_4_indicator/SumSumElinear/linear_model/linear_model/linear_model/col_4_indicator/one_hotSlinear/linear_model/linear_model/linear_model/col_4_indicator/Sum/reduction_indices*'
_output_shapes
:?????????X*
T0
?
Clinear/linear_model/linear_model/linear_model/col_4_indicator/ShapeShapeAlinear/linear_model/linear_model/linear_model/col_4_indicator/Sum*
T0*
_output_shapes
:
?
Qlinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Slinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Slinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_4_indicator/strided_sliceStridedSliceClinear/linear_model/linear_model/linear_model/col_4_indicator/ShapeQlinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stackSlinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/col_4_indicator/strided_slice/stack_2*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: 
?
Mlinear/linear_model/linear_model/linear_model/col_4_indicator/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :X
?
Klinear/linear_model/linear_model/linear_model/col_4_indicator/Reshape/shapePackKlinear/linear_model/linear_model/linear_model/col_4_indicator/strided_sliceMlinear/linear_model/linear_model/linear_model/col_4_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Elinear/linear_model/linear_model/linear_model/col_4_indicator/ReshapeReshapeAlinear/linear_model/linear_model/linear_model/col_4_indicator/SumKlinear/linear_model/linear_model/linear_model/col_4_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????X
?
:linear/linear_model/col_4_indicator/weights/ReadVariableOpReadVariableOp2linear/linear_model/col_4_indicator/weights/part_0*
_output_shapes

:X*
dtype0
?
+linear/linear_model/col_4_indicator/weightsIdentity:linear/linear_model/col_4_indicator/weights/ReadVariableOp*
_output_shapes

:X*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_4_indicator/weighted_sumMatMulElinear/linear_model/linear_model/linear_model/col_4_indicator/Reshape+linear/linear_model/col_4_indicator/weights*
T0*'
_output_shapes
:?????????
?
Llinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Hlinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDims
ExpandDimsStringStrip_4Llinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
?
Vlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDims\linear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/ignore_value/x*'
_output_shapes
:?????????*
T0
?
Ulinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
Tlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDimsUlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/indices*
Tparams0*
Tindices0	*#
_output_shapes
:?????????
?
Ylinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/col_5_indicator/ExpandDims*
out_type0	*
T0*
_output_shapes
:
?
Dlinear/linear_model/linear_model/linear_model/col_5_indicator/lookupStringToHashBucketFastTlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/values*#
_output_shapes
:?????????*
num_bucketsX
?
Ylinear/linear_model/linear_model/linear_model/col_5_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Klinear/linear_model/linear_model/linear_model/col_5_indicator/SparseToDenseSparseToDenseUlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/col_5_indicator/to_sparse_input/dense_shapeDlinear/linear_model/linear_model/linear_model/col_5_indicator/lookupYlinear/linear_model/linear_model/linear_model/col_5_indicator/SparseToDense/default_value*
T0	*'
_output_shapes
:?????????*
Tindices0	
?
Klinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Mlinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
?
Klinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/depthConst*
dtype0*
value	B :X*
_output_shapes
: 
?
Nlinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Olinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
Elinear/linear_model/linear_model/linear_model/col_5_indicator/one_hotOneHotKlinear/linear_model/linear_model/linear_model/col_5_indicator/SparseToDenseKlinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/depthNlinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/on_valueOlinear/linear_model/linear_model/linear_model/col_5_indicator/one_hot/off_value*+
_output_shapes
:?????????X*
T0
?
Slinear/linear_model/linear_model/linear_model/col_5_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?
Alinear/linear_model/linear_model/linear_model/col_5_indicator/SumSumElinear/linear_model/linear_model/linear_model/col_5_indicator/one_hotSlinear/linear_model/linear_model/linear_model/col_5_indicator/Sum/reduction_indices*'
_output_shapes
:?????????X*
T0
?
Clinear/linear_model/linear_model/linear_model/col_5_indicator/ShapeShapeAlinear/linear_model/linear_model/linear_model/col_5_indicator/Sum*
_output_shapes
:*
T0
?
Qlinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Slinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
?
Slinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Klinear/linear_model/linear_model/linear_model/col_5_indicator/strided_sliceStridedSliceClinear/linear_model/linear_model/linear_model/col_5_indicator/ShapeQlinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stackSlinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/col_5_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Mlinear/linear_model/linear_model/linear_model/col_5_indicator/Reshape/shape/1Const*
value	B :X*
dtype0*
_output_shapes
: 
?
Klinear/linear_model/linear_model/linear_model/col_5_indicator/Reshape/shapePackKlinear/linear_model/linear_model/linear_model/col_5_indicator/strided_sliceMlinear/linear_model/linear_model/linear_model/col_5_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Elinear/linear_model/linear_model/linear_model/col_5_indicator/ReshapeReshapeAlinear/linear_model/linear_model/linear_model/col_5_indicator/SumKlinear/linear_model/linear_model/linear_model/col_5_indicator/Reshape/shape*'
_output_shapes
:?????????X*
T0
?
:linear/linear_model/col_5_indicator/weights/ReadVariableOpReadVariableOp2linear/linear_model/col_5_indicator/weights/part_0*
dtype0*
_output_shapes

:X
?
+linear/linear_model/col_5_indicator/weightsIdentity:linear/linear_model/col_5_indicator/weights/ReadVariableOp*
_output_shapes

:X*
T0
?
Jlinear/linear_model/linear_model/linear_model/col_5_indicator/weighted_sumMatMulElinear/linear_model/linear_model/linear_model/col_5_indicator/Reshape+linear/linear_model/col_5_indicator/weights*'
_output_shapes
:?????????*
T0
?
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNJlinear/linear_model/linear_model/linear_model/col_1_indicator/weighted_sumJlinear/linear_model/linear_model/linear_model/col_2_indicator/weighted_sumJlinear/linear_model/linear_model/linear_model/col_4_indicator/weighted_sumJlinear/linear_model/linear_model/linear_model/col_5_indicator/weighted_sum*
T0*
N*'
_output_shapes
:?????????
?
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
?
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
_output_shapes
:*
T0
?
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*'
_output_shapes
:?????????*
T0
[
linear/bias/tagConst*
valueB Blinear/bias*
_output_shapes
: *
dtype0
?
!linear/bias/values/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
o
linear/bias/valuesPack!linear/bias/values/ReadVariableOp*
T0*
N*
_output_shapes

:
\
linear/biasHistogramSummarylinear/bias/taglinear/bias/values*
_output_shapes
: 
?
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp2linear/linear_model/col_1_indicator/weights/part_0*
dtype0*
_output_shapes

:
f
$linear/zero_fraction/total_size/SizeConst*
value	B	 R
*
_output_shapes
: *
dtype0	
?
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp2linear/linear_model/col_2_indicator/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_1Const*
_output_shapes
: *
value	B	 R
*
dtype0	
?
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp2linear/linear_model/col_4_indicator/weights/part_0*
_output_shapes

:X*
dtype0
i
&linear/zero_fraction/total_size/Size_2Const*
value
B	 R?*
dtype0	*
_output_shapes
: 
?
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp2linear/linear_model/col_5_indicator/weights/part_0*
_output_shapes

:X*
dtype0
i
&linear/zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value
B	 R?
?
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3*
N*
_output_shapes
: *
T0	
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
?
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 
?
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
_output_shapes
: *
T0

?
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
?
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/col_1_indicator/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*E
_class;
97loc:@linear/linear_model/col_1_indicator/weights/part_0*
_output_shapes
: : *
T0
?
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
dtype0	*
value	B	 R
*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R????*
_output_shapes
: *
dtype0	
?
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
?
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
?
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
?
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*(
_output_shapes
::*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp
?
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0
?
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
?
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
?
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::*
T0
?
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0	
?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
dtype0*
valueB"       *
_output_shapes
:
?
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 
?
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
?
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*
_output_shapes
: *

SrcT0	*

DstT0
?
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
?
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	
?
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
_output_shapes
: : *
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size
?
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
_output_shapes
: *
T0
?
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
_output_shapes
: : *
T0*
N
i
'linear/zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 
?
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: *
T0

?
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
?
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/col_2_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
_output_shapes
: : *E
_class;
97loc:@linear/linear_model/col_2_indicator/weights/part_0*
T0
?
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
_output_shapes
: *
value	B	 R
*
dtype0	
?
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R????*
dtype0	*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
?
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
?
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
?
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
_output_shapes
: *
T0

?
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
?
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*
T0*(
_output_shapes
::
?
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*

DstT0*
_output_shapes

:
?
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
_output_shapes
:*
dtype0
?
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
_output_shapes
: *
dtype0
?
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
?
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*(
_output_shapes
::*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp
?
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes

:*

SrcT0
*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
?
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
?
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
?
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : *
T0	
?
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
_output_shapes
: : *
T0*
N
i
'linear/zero_fraction/total_zero/Const_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 
?
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
_output_shapes
: *
T0	
?
3linear/zero_fraction/total_zero/zero_count_2/SwitchSwitch'linear/zero_fraction/total_zero/Equal_2'linear/zero_fraction/total_zero/Equal_2*
_output_shapes
: : *
T0

?
5linear/zero_fraction/total_zero/zero_count_2/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_2/Switch:1*
T0
*
_output_shapes
: 
?
5linear/zero_fraction/total_zero/zero_count_2/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_2/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_2/pred_idIdentity'linear/zero_fraction/total_zero/Equal_2*
_output_shapes
: *
T0

?
2linear/zero_fraction/total_zero/zero_count_2/ConstConst6^linear/zero_fraction/total_zero/zero_count_2/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:X*
dtype0
?
Plinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/col_4_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0*E
_class;
97loc:@linear/linear_model/col_4_indicator/weights/part_0*
_output_shapes
: : 
?
?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
dtype0	*
_output_shapes
: *
value
B	 R?
?
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
_output_shapes
: *
dtype0	*
valueB	 R????
?
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
_output_shapes
: : *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
?
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:X
?
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*(
_output_shapes
:X:X*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp
?
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:X*

SrcT0
*

DstT0
?
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
?
[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
?
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:X
?
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
:X:X
?
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual*
_output_shapes

:X*

DstT0	*

SrcT0

?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
Qlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
?
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
?
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size*
_output_shapes
: *

SrcT0	*

DstT0
?
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Clinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_2/ToFloatCast;linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch*

DstT0*
_output_shapes
: *

SrcT0	
?
;linear/zero_fraction/total_zero/zero_count_2/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_24linear/zero_fraction/total_zero/zero_count_2/pred_id*
_output_shapes
: : *
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_2
?
0linear/zero_fraction/total_zero/zero_count_2/mulMulClinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_2/ToFloat*
_output_shapes
: *
T0
?
2linear/zero_fraction/total_zero/zero_count_2/MergeMerge0linear/zero_fraction/total_zero/zero_count_2/mul2linear/zero_fraction/total_zero/zero_count_2/Const*
_output_shapes
: : *
N*
T0
i
'linear/zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
value	B	 R *
dtype0	
?
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
?
3linear/zero_fraction/total_zero/zero_count_3/SwitchSwitch'linear/zero_fraction/total_zero/Equal_3'linear/zero_fraction/total_zero/Equal_3*
_output_shapes
: : *
T0

?
5linear/zero_fraction/total_zero/zero_count_3/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_3/Switch:1*
_output_shapes
: *
T0

?
5linear/zero_fraction/total_zero/zero_count_3/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_3/Switch*
T0
*
_output_shapes
: 
?
4linear/zero_fraction/total_zero/zero_count_3/pred_idIdentity'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_3/ConstConst6^linear/zero_fraction/total_zero/zero_count_3/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:X*
dtype0
?
Plinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/col_5_indicator/weights/part_04linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0*
_output_shapes
: : *E
_class;
97loc:@linear/linear_model/col_5_indicator/weights/part_0
?
?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
dtype0	*
value
B	 R?*
_output_shapes
: 
?
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
dtype0	*
valueB	 R????*
_output_shapes
: 
?
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
?
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
_output_shapes
: : *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

?
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
?
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
?
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:X
?
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*(
_output_shapes
:X:X*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp*
T0
?
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*
_output_shapes

:X*

SrcT0

?
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
dtype0*
valueB
 *    *
_output_shapes
: 
?
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:X*
T0
?
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*(
_output_shapes
:X:X*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp
?
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
_output_shapes

:X*

DstT0	
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
?
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 
?
Qlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
?
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size*

SrcT0	*

DstT0*
_output_shapes
: 
?
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
?
Clinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
4linear/zero_fraction/total_zero/zero_count_3/ToFloatCast;linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch*

SrcT0	*
_output_shapes
: *

DstT0
?
;linear/zero_fraction/total_zero/zero_count_3/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_34linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_3*
_output_shapes
: : 
?
0linear/zero_fraction/total_zero/zero_count_3/mulMulClinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_3/ToFloat*
T0*
_output_shapes
: 
?
2linear/zero_fraction/total_zero/zero_count_3/MergeMerge0linear/zero_fraction/total_zero/zero_count_3/mul2linear/zero_fraction/total_zero/zero_count_3/Const*
T0*
_output_shapes
: : *
N
?
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge2linear/zero_fraction/total_zero/zero_count_2/Merge2linear/zero_fraction/total_zero/zero_count_3/Merge*
_output_shapes
: *
T0*
N
?
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

DstT0*
_output_shapes
: *

SrcT0	
?
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
_output_shapes
: *
T0
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 
?
$linear/fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*0
value'B% Blinear/fraction_of_zero_weights
?
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
?
linear/head/logits/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
dtype0*
_output_shapes
: *
value	B :
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
?
linear/head/predictions/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
:*
T0
u
+linear/head/predictions/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
w
-linear/head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
w
-linear/head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
%linear/head/predictions/strided_sliceStridedSlicelinear/head/predictions/Shape+linear/head/predictions/strided_slice/stack-linear/head/predictions/strided_slice/stack_1-linear/head/predictions/strided_slice/stack_2*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0
e
#linear/head/predictions/range/startConst*
value	B : *
_output_shapes
: *
dtype0
e
#linear/head/predictions/range/limitConst*
value	B :*
_output_shapes
: *
dtype0
e
#linear/head/predictions/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
?
linear/head/predictions/rangeRange#linear/head/predictions/range/start#linear/head/predictions/range/limit#linear/head/predictions/range/delta*
_output_shapes
:
h
&linear/head/predictions/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
?
"linear/head/predictions/ExpandDims
ExpandDimslinear/head/predictions/range&linear/head/predictions/ExpandDims/dim*
T0*
_output_shapes

:
j
(linear/head/predictions/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
?
&linear/head/predictions/Tile/multiplesPack%linear/head/predictions/strided_slice(linear/head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
linear/head/predictions/TileTile"linear/head/predictions/ExpandDims&linear/head/predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
?
linear/head/predictions/Shape_1Shape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
:
w
-linear/head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/linear/head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/linear/head/predictions/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
'linear/head/predictions/strided_slice_1StridedSlicelinear/head/predictions/Shape_1-linear/head/predictions/strided_slice_1/stack/linear/head/predictions/strided_slice_1/stack_1/linear/head/predictions/strided_slice_1/stack_2*
Index0*
_output_shapes
: *
T0*
shrink_axis_mask
?
*linear/head/predictions/ExpandDims_1/inputConst*J
valueAB?B	category0B	category1B	category2B	category3B	category4*
_output_shapes
:*
dtype0
j
(linear/head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
$linear/head/predictions/ExpandDims_1
ExpandDims*linear/head/predictions/ExpandDims_1/input(linear/head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
l
*linear/head/predictions/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
(linear/head/predictions/Tile_1/multiplesPack'linear/head/predictions/strided_slice_1*linear/head/predictions/Tile_1/multiples/1*
N*
_output_shapes
:*
T0
?
linear/head/predictions/Tile_1Tile$linear/head/predictions/ExpandDims_1(linear/head/predictions/Tile_1/multiples*'
_output_shapes
:?????????*
T0
v
+linear/head/predictions/class_ids/dimensionConst*
valueB :
?????????*
_output_shapes
: *
dtype0
?
!linear/head/predictions/class_idsArgMax:linear/linear_model/linear_model/linear_model/weighted_sum+linear/head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
s
(linear/head/predictions/ExpandDims_2/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
$linear/head/predictions/ExpandDims_2
ExpandDims!linear/head/predictions/class_ids(linear/head/predictions/ExpandDims_2/dim*'
_output_shapes
:?????????*
T0	
?
1linear/head/predictions/class_string_lookup/ConstConst*J
valueAB?B	category0B	category1B	category2B	category3B	category4*
dtype0*
_output_shapes
:
r
0linear/head/predictions/class_string_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
y
7linear/head/predictions/class_string_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
y
7linear/head/predictions/class_string_lookup/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
?
1linear/head/predictions/class_string_lookup/rangeRange7linear/head/predictions/class_string_lookup/range/start0linear/head/predictions/class_string_lookup/Size7linear/head/predictions/class_string_lookup/range/delta*
_output_shapes
:
?
0linear/head/predictions/class_string_lookup/CastCast1linear/head/predictions/class_string_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
w
3linear/head/predictions/class_string_lookup/Const_1Const*
dtype0*
_output_shapes
: *
valueB	 BUNK
?
6linear/head/predictions/class_string_lookup/hash_tableHashTableV2*
	key_dtype0	*
value_dtype0*
_output_shapes
: 
?
Jlinear/head/predictions/class_string_lookup/table_init/LookupTableImportV2LookupTableImportV26linear/head/predictions/class_string_lookup/hash_table0linear/head/predictions/class_string_lookup/Cast1linear/head/predictions/class_string_lookup/Const*	
Tin0	*

Tout0
?
;linear/head/predictions/hash_table_Lookup/LookupTableFindV2LookupTableFindV26linear/head/predictions/class_string_lookup/hash_table$linear/head/predictions/ExpandDims_23linear/head/predictions/class_string_lookup/Const_1*	
Tin0	*

Tout0*'
_output_shapes
:?????????
?
%linear/head/predictions/probabilitiesSoftmax:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
f
linear/head/ShapeShape%linear/head/predictions/probabilities*
T0*
_output_shapes
:
i
linear/head/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
k
!linear/head/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
k
!linear/head/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0
?
linear/head/ExpandDims/inputConst*
_output_shapes
:*
dtype0*J
valueAB?B	category0B	category1B	category2B	category3B	category4
\
linear/head/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
linear/head/ExpandDims
ExpandDimslinear/head/ExpandDims/inputlinear/head/ExpandDims/dim*
_output_shapes

:*
T0
^
linear/head/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
?
linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
T0*
_output_shapes
:*
N
~
linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*'
_output_shapes
:?????????*
T0

initNoOp
?
init_all_tablesNoOpK^linear/head/predictions/class_string_lookup/table_init/LookupTableImportV2u^linear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/table_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
|
save/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes
:*
T0
?
save/Read_1/ReadVariableOpReadVariableOp2linear/linear_model/col_1_indicator/weights/part_0*
_output_shapes

:*
dtype0
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_2/ReadVariableOpReadVariableOp2linear/linear_model/col_2_indicator/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_3/ReadVariableOpReadVariableOp2linear/linear_model/col_4_indicator/weights/part_0*
dtype0*
_output_shapes

:X
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:X
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
_output_shapes

:X*
T0
?
save/Read_4/ReadVariableOpReadVariableOp2linear/linear_model/col_5_indicator/weights/part_0*
_output_shapes

:X*
dtype0
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes

:X*
T0
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes

:X*
T0
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9e14c56afe644d7d96ff46cbfdd8b5e1/part*
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
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename*
T0
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
value	B :*
_output_shapes
: 
?
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/Read_5/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
l
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
_output_shapes
:*
T0
?
save/Read_6/ReadVariableOpReadVariableOp2linear/linear_model/col_1_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
p
save/Identity_12Identitysave/Read_6/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes

:
?
save/Read_7/ReadVariableOpReadVariableOp2linear/linear_model/col_2_indicator/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_14Identitysave/Read_7/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
_output_shapes

:*
T0
?
save/Read_8/ReadVariableOpReadVariableOp2linear/linear_model/col_4_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:X*
dtype0
p
save/Identity_16Identitysave/Read_8/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:X
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
_output_shapes

:X*
T0
?
save/Read_9/ReadVariableOpReadVariableOp2linear/linear_model/col_5_indicator/weights/part_0"/device:CPU:0*
_output_shapes

:X*
dtype0
p
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:X
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:X
?
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?B linear/linear_model/bias_weightsB+linear/linear_model/col_1_indicator/weightsB+linear/linear_model/col_2_indicator/weightsB+linear/linear_model/col_4_indicator/weightsB+linear/linear_model/col_5_indicator/weights
?
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*R
valueIBGB5 0,5B2 5 0,2:0,5B2 5 0,2:0,5B88 5 0,88:0,5B88 5 0,88:0,5*
dtype0
?
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_11save/Identity_13save/Identity_15save/Identity_17save/Identity_19"/device:CPU:0*
dtypes	
2
?
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save/ShardedFilename_1
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/Identity_20Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_output_shapes
: *
_class
loc:@global_step
(
save/restore_shardNoOp^save/Assign
?
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?B linear/linear_model/bias_weightsB+linear/linear_model/col_1_indicator/weightsB+linear/linear_model/col_2_indicator/weightsB+linear/linear_model/col_4_indicator/weightsB+linear/linear_model/col_5_indicator/weights
?
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*R
valueIBGB5 0,5B2 5 0,2:0,5B2 5 0,2:0,5B88 5 0,88:0,5B88 5 0,88:0,5
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes	
2*B
_output_shapes0
.::::X:X
b
save/Identity_21Identitysave/RestoreV2_1"/device:CPU:0*
_output_shapes
:*
T0
?
save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_21"/device:CPU:0*
dtype0
h
save/Identity_22Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_1AssignVariableOp2linear/linear_model/col_1_indicator/weights/part_0save/Identity_22"/device:CPU:0*
dtype0
h
save/Identity_23Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:
?
save/AssignVariableOp_2AssignVariableOp2linear/linear_model/col_2_indicator/weights/part_0save/Identity_23"/device:CPU:0*
dtype0
h
save/Identity_24Identitysave/RestoreV2_1:3"/device:CPU:0*
_output_shapes

:X*
T0
?
save/AssignVariableOp_3AssignVariableOp2linear/linear_model/col_4_indicator/weights/part_0save/Identity_24"/device:CPU:0*
dtype0
h
save/Identity_25Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:X
?
save/AssignVariableOp_4AssignVariableOp2linear/linear_model/col_5_indicator/weights/part_0save/Identity_25"/device:CPU:0*
dtype0
?
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&?
save/Const:0save/Identity_20:0save/restore_all (5 @F8"?
	variables??
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
?
4linear/linear_model/col_1_indicator/weights/part_0:09linear/linear_model/col_1_indicator/weights/part_0/AssignHlinear/linear_model/col_1_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_1_indicator/weights  "(2Flinear/linear_model/col_1_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_2_indicator/weights/part_0:09linear/linear_model/col_2_indicator/weights/part_0/AssignHlinear/linear_model/col_2_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_2_indicator/weights  "(2Flinear/linear_model/col_2_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_4_indicator/weights/part_0:09linear/linear_model/col_4_indicator/weights/part_0/AssignHlinear/linear_model/col_4_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_4_indicator/weightsX  "X(2Flinear/linear_model/col_4_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_5_indicator/weights/part_0:09linear/linear_model/col_5_indicator/weights/part_0/AssignHlinear/linear_model/col_5_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_5_indicator/weightsX  "X(2Flinear/linear_model/col_5_indicator/weights/part_0/Initializer/zeros:08
?
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"??
cond_context????
?
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *?
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
?.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*?
4linear/linear_model/col_1_indicator/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
4linear/zero_fraction/total_zero/zero_count/ToFloat:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0?
4linear/linear_model/col_1_indicator/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:02?

?

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02?

?

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0?
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0?
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
?0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*?
4linear/linear_model/col_2_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_1/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0?
4linear/linear_model/col_2_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0i
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:12?

?

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
6linear/zero_fraction/total_zero/zero_count_2/cond_text6linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_2/Const:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
?0
8linear/zero_fraction/total_zero/zero_count_2/cond_text_16linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_f:0*?
4linear/linear_model/col_4_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_2:0
=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_2/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_2/mul:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0i
(linear/zero_fraction/total_size/Size_2:0=linear/zero_fraction/total_zero/zero_count_2/ToFloat/Switch:0?
4linear/linear_model/col_4_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:02?

?

Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
6linear/zero_fraction/total_zero/zero_count_3/cond_text6linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_t:0 *?
4linear/zero_fraction/total_zero/zero_count_3/Const:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
?0
8linear/zero_fraction/total_zero/zero_count_3/cond_text_16linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_f:0*?
4linear/linear_model/col_5_indicator/weights/part_0:0
(linear/zero_fraction/total_size/Size_3:0
=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_3/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_3/mul:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0i
(linear/zero_fraction/total_size/Size_3:0=linear/zero_fraction/total_zero/zero_count_3/ToFloat/Switch:0?
4linear/linear_model/col_5_indicator/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:02?

?

Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0 *?	
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:02?

?

Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0*?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0?
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0?
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0"%
saved_model_main_op


group_deps"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"?
trainable_variables??
?
4linear/linear_model/col_1_indicator/weights/part_0:09linear/linear_model/col_1_indicator/weights/part_0/AssignHlinear/linear_model/col_1_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_1_indicator/weights  "(2Flinear/linear_model/col_1_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_2_indicator/weights/part_0:09linear/linear_model/col_2_indicator/weights/part_0/AssignHlinear/linear_model/col_2_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_2_indicator/weights  "(2Flinear/linear_model/col_2_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_4_indicator/weights/part_0:09linear/linear_model/col_4_indicator/weights/part_0/AssignHlinear/linear_model/col_4_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_4_indicator/weightsX  "X(2Flinear/linear_model/col_4_indicator/weights/part_0/Initializer/zeros:08
?
4linear/linear_model/col_5_indicator/weights/part_0:09linear/linear_model/col_5_indicator/weights/part_0/AssignHlinear/linear_model/col_5_indicator/weights/part_0/Read/ReadVariableOp:0"9
+linear/linear_model/col_5_indicator/weightsX  "X(2Flinear/linear_model/col_5_indicator/weights/part_0/Initializer/zeros:08
?
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"?
table_initializer?
?
tlinear/linear_model/linear_model/linear_model/col_1_indicator/col_1_lookup/hash_table/table_init/LookupTableImportV2
Jlinear/head/predictions/class_string_lookup/table_init/LookupTableImportV2*?
predict?
2
key+
PlaceholderWithDefault:0?????????
+
csv_row 
Placeholder:0?????????]
logitsS
<linear/linear_model/linear_model/linear_model/weighted_sum:0?????????O
probabilities>
'linear/head/predictions/probabilities:0?????????F
all_class_ids5
linear/head/predictions/Tile:0?????????F
all_classes7
 linear/head/predictions/Tile_1:0?????????*
key#
ExpandDims:0?????????_
classesT
=linear/head/predictions/hash_table_Lookup/LookupTableFindV2:0?????????J
	class_ids=
&linear/head/predictions/ExpandDims_2:0	?????????tensorflow/serving/predict