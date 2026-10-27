.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist floatToString(FIICC)Ljava/lang/String;
    .registers 12

    .line 41
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 42
    :goto_a
    if-eqz v0, :cond_d

    .line 43
    neg-float p0, p0

    .line 45
    :cond_d
    float-to-int v3, p0

    .line 46
    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr p0, v4

    .line 49
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 51
    if-ge v4, p1, :cond_3a

    .line 52
    sub-int/2addr p1, v4

    .line 53
    if-eqz p3, :cond_42

    .line 54
    new-array p1, p1, [C

    .line 55
    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([CC)V

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    .line 59
    :cond_3a
    if-le v4, p1, :cond_42

    .line 60
    sub-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 59
    :cond_42
    :goto_42
    nop

    .line 62
    :goto_43
    const-string p1, "-"

    const-string p3, ""

    if-nez p2, :cond_5f

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    move-object p1, p3

    :goto_52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_5f
    move v4, v2

    :goto_60
    if-ge v4, p2, :cond_68

    .line 68
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr p0, v5

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 70
    :cond_68
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    .line 72
    move v4, v2

    :goto_6e
    if-ge v4, p2, :cond_77

    .line 73
    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v5

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 76
    :cond_77
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_93
    if-ltz v5, :cond_a3

    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x30

    if-eq v1, v6, :cond_9e

    .line 81
    goto :goto_a3

    .line 83
    :cond_9e
    add-int/lit8 v4, v4, -0x1

    .line 79
    add-int/lit8 v5, v5, -0x1

    goto :goto_93

    .line 85
    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v4, v1, :cond_ad

    .line 86
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_ad
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 89
    if-eqz p4, :cond_d1

    if-ge v1, p2, :cond_d1

    .line 90
    sub-int/2addr p2, v1

    new-array p2, p2, [C

    .line 91
    invoke-static {p2, p4}, Ljava/util/Arrays;->fill([CC)V

    .line 92
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_d1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_d9

    goto :goto_da

    :cond_d9
    move-object p1, p3

    :goto_da
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
