.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field greylist-max-o mCount:I

.field greylist-max-o mForce:[Z

.field private greylist-max-o mHashCode:I

.field greylist-max-o mResId:[I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2030
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void
.end method

.method private blacklist findValue(IZ)I
    .registers 5

    .line 2033
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v0, v1, :cond_15

    .line 2034
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p2, :cond_12

    .line 2035
    return v0

    .line 2033
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2038
    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist moveToLast(I)V
    .registers 8

    .line 2042
    if-ltz p1, :cond_3c

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_9

    goto :goto_3c

    .line 2045
    :cond_9
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v0, v0, p1

    .line 2046
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v1, v1, p1

    .line 2047
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2048
    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v4, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v4, v4, -0x1

    aput v0, v2, v4

    .line 2049
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget-object v2, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v4, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2050
    iget-object p1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, -0x1

    aput-boolean v1, p1, v0

    .line 2051
    return-void

    .line 2043
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public greylist-max-o append(IZ)V
    .registers 5

    .line 2054
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x4

    if-nez v0, :cond_9

    .line 2055
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2058
    :cond_9
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_11

    .line 2059
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2065
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->findValue(IZ)I

    move-result v0

    .line 2066
    if-ltz v0, :cond_1b

    .line 2067
    invoke-direct {p0, v0}, Landroid/content/res/Resources$ThemeKey;->moveToLast(I)V

    goto :goto_3f

    .line 2069
    :cond_1b
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2070
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2071
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2072
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2074
    :goto_3f
    return-void
.end method

.method public blacklist clone()Landroid/content/res/Resources$ThemeKey;
    .registers 3

    .line 2123
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 2124
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2125
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2126
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2127
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2128
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2025
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 2095
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2096
    return v0

    .line 2099
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_44

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1c

    goto :goto_44

    .line 2103
    :cond_1c
    check-cast p1, Landroid/content/res/Resources$ThemeKey;

    .line 2104
    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v3, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v2, v3, :cond_25

    .line 2105
    return v1

    .line 2108
    :cond_25
    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2109
    move v3, v1

    :goto_28
    if-ge v3, v2, :cond_43

    .line 2110
    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v3

    iget-object v5, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_42

    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v4, v4, v3

    iget-object v5, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v3

    if-eq v4, v5, :cond_3f

    goto :goto_42

    .line 2109
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2111
    :cond_42
    :goto_42
    return v1

    .line 2115
    :cond_43
    return v0

    .line 2100
    :cond_44
    :goto_44
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2090
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public greylist-max-o setTo(Landroid/content/res/Resources$ThemeKey;)V
    .registers 4

    .line 2082
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_f

    :cond_7
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_f
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2083
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_16

    goto :goto_1f

    :cond_16
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Z

    :goto_1f
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2084
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2085
    iget p1, p1, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput p1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2086
    return-void
.end method
