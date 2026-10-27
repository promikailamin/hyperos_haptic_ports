.class Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# static fields
.field static final greylist-max-o N_CHILDREN:I = 0x3


# instance fields
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist-max-o mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field blacklist mSourceDrawableId:I

.field greylist-max-o mSrcDensityOverride:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .registers 10

    .line 1017
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 1002
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 1007
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 1014
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1018
    if-eqz p1, :cond_11

    iget v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1019
    const/4 v1, 0x3

    new-array v2, v1, [Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1020
    if-eqz p1, :cond_5f

    .line 1021
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1023
    iget v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 1024
    iget v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1025
    iget v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 1027
    nop

    :goto_2e
    if-ge v0, v1, :cond_3e

    .line 1028
    aget-object v3, v2, v0

    .line 1029
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1032
    :cond_3e
    iget-boolean p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1033
    iget p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    iput p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1034
    iget-boolean p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1035
    iget-boolean p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1036
    iget-boolean p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1037
    iget-object p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    iput-object p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    .line 1038
    iget p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iput p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 1039
    iget p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 1040
    goto :goto_70

    .line 1041
    :cond_5f
    nop

    :goto_60
    if-ge v0, v1, :cond_70

    .line 1042
    iget-object p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance p2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget p3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    aput-object p2, p1, v0

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1045
    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 6

    .line 1055
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_20

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_20

    .line 1059
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1060
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1f

    .line 1061
    aget-object v4, v0, v3

    .line 1062
    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1063
    return v1

    .line 1060
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1066
    :cond_1f
    return v2

    .line 1056
    :cond_20
    :goto_20
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .registers 5

    .line 1153
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1154
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x3

    if-ge v2, v3, :cond_17

    .line 1155
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1156
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_14

    .line 1157
    return v1

    .line 1154
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1162
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1081
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .registers 7

    .line 1086
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_7

    .line 1087
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    return v0

    .line 1090
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1093
    nop

    .line 1094
    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x3

    if-ge v1, v2, :cond_19

    .line 1095
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    .line 1096
    nop

    .line 1097
    goto :goto_1a

    .line 1094
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    const/4 v1, -0x1

    .line 1102
    :goto_1a
    if-ltz v1, :cond_25

    .line 1103
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    goto :goto_26

    .line 1105
    :cond_25
    const/4 v3, -0x2

    .line 1109
    :goto_26
    const/4 v4, 0x1

    add-int/2addr v1, v4

    :goto_28
    if-ge v1, v2, :cond_3b

    .line 1110
    aget-object v5, v0, v1

    iget-object v5, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1111
    if-eqz v5, :cond_38

    .line 1112
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v3, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 1109
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1116
    :cond_3b
    iput v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1117
    iput-boolean v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1118
    return v3
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .registers 5

    .line 1142
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1143
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x3

    if-ge v2, v3, :cond_18

    .line 1144
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1145
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1146
    const/4 v0, 0x1

    return v0

    .line 1143
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1149
    :cond_18
    return v1
.end method

.method public greylist-max-o invalidateCache()V
    .registers 2

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1167
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1168
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .registers 6

    .line 1122
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_7

    .line 1123
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 1126
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1127
    nop

    .line 1128
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_22

    .line 1129
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1130
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1131
    nop

    .line 1132
    move v1, v4

    goto :goto_22

    .line 1128
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1136
    :cond_22
    :goto_22
    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1137
    iput-boolean v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1138
    return v1
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1071
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1076
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3

    .line 1048
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_6

    .line 1049
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1051
    :cond_6
    return-void
.end method
