.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private blacklist mChars:[C

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 912
    return-void
.end method

.method private blacklist reserve(I)I
    .registers 5

    .line 1004
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 1005
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    .line 1006
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 1007
    array-length v2, p1

    .line 1008
    if-le v1, v2, :cond_14

    .line 1009
    mul-int/lit8 v2, v2, 0x2

    .line 1010
    new-array v1, v2, [C

    .line 1011
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 1014
    :cond_14
    return v0
.end method


# virtual methods
.method public blacklist append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 9

    .line 976
    nop

    .line 977
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_a

    .line 978
    mul-int/lit8 v0, v0, 0xa

    .line 977
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 980
    :cond_a
    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 983
    float-to-int v0, p1

    if-nez v0, :cond_21

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_21

    .line 984
    const-string v2, "-"

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 986
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 988
    if-eqz p2, :cond_3b

    .line 989
    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 990
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 991
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    .line 992
    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 995
    :cond_3b
    return-object p0
.end method

.method public blacklist append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 3

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 10

    .line 932
    const/4 v0, 0x1

    if-gez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 933
    :goto_6
    if-eqz v1, :cond_11

    .line 934
    neg-int p1, p1

    .line 935
    if-gez p1, :cond_11

    .line 936
    const-string p1, "-2147483648"

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 937
    return-object p0

    .line 941
    :cond_11
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 942
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 944
    const/16 v4, 0x30

    if-nez p1, :cond_25

    .line 945
    aput-char v4, v3, v2

    .line 946
    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 947
    return-object p0

    .line 950
    :cond_25
    if-eqz v1, :cond_2e

    .line 951
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x2d

    aput-char v1, v3, v2

    move v2, v0

    .line 954
    :cond_2e
    nop

    .line 955
    const/16 v0, 0xa

    const v1, 0x3b9aca00

    move v5, v0

    .line 956
    :cond_35
    :goto_35
    if-ge p1, v1, :cond_43

    .line 957
    div-int/lit8 v1, v1, 0xa

    .line 958
    add-int/lit8 v5, v5, -0x1

    .line 959
    if-ge v5, p2, :cond_35

    .line 960
    add-int/lit8 v6, v2, 0x1

    aput-char v4, v3, v2

    move v2, v6

    goto :goto_35

    .line 965
    :cond_43
    :goto_43
    div-int p2, p1, v1

    .line 966
    mul-int v5, p2, v1

    sub-int/2addr p1, v5

    .line 967
    div-int/2addr v1, v0

    .line 968
    add-int/lit8 v5, v2, 0x1

    add-int/2addr p2, v4

    int-to-char p2, p2

    aput-char p2, v3, v2

    .line 969
    if-nez v1, :cond_54

    .line 971
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 972
    return-object p0

    .line 969
    :cond_54
    move v2, v5

    goto :goto_43
.end method

.method public blacklist append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 6

    .line 920
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 921
    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    .line 922
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 923
    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 924
    return-object p0
.end method

.method public blacklist clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .registers 2

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 916
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1000
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
