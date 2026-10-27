.class public Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;
.super Ljava/lang/Object;
.source "FloatsToPath.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist genPath(Landroid/graphics/Path;[FFF)V
    .registers 13

    .line 41
    nop

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v7, 0x0

    move v1, v7

    .line 43
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_b3

    .line 44
    aget v2, p1, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    packed-switch v2, :pswitch_data_e6

    .line 89
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Odd command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v1

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 86
    :pswitch_33
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_8

    .line 82
    :pswitch_36
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_8

    .line 74
    :pswitch_3c
    add-int/lit8 v8, v1, 0x3

    .line 75
    add-int/lit8 v1, v8, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, v8, 0x2

    aget v3, p1, v3

    add-int/lit8 v4, v8, 0x3

    aget v4, p1, v4

    add-int/lit8 v5, v8, 0x4

    aget v5, p1, v5

    add-int/lit8 v6, v8, 0x5

    aget v6, p1, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 79
    add-int/lit8 v1, v8, 0x6

    .line 80
    goto :goto_8

    .line 62
    :pswitch_5c
    add-int/lit8 v6, v1, 0x3

    .line 64
    add-int/lit8 v1, v6, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, v6, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, v6, 0x2

    aget v3, p1, v3

    add-int/lit8 v4, v6, 0x3

    aget v4, p1, v4

    add-int/lit8 v5, v6, 0x4

    aget v5, p1, v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->conicTo(FFFFF)V

    .line 71
    add-int/lit8 v1, v6, 0x5

    .line 72
    goto :goto_8

    .line 56
    :pswitch_78
    add-int/lit8 v1, v1, 0x3

    .line 57
    add-int/lit8 v2, v1, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x3

    aget v5, p1, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 59
    add-int/lit8 v1, v1, 0x4

    .line 60
    goto/16 :goto_8

    .line 51
    :pswitch_91
    add-int/lit8 v1, v1, 0x3

    .line 52
    add-int/lit8 v2, v1, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 54
    goto/16 :goto_8

    .line 46
    :pswitch_a2
    add-int/lit8 v1, v1, 0x1

    .line 47
    add-int/lit8 v2, v1, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    add-int/lit8 v1, v1, 0x2

    .line 49
    goto/16 :goto_8

    .line 93
    :cond_b3
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 94
    const/4 p1, 0x0

    cmpl-float v1, p2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_c6

    cmpg-float v1, p3, v2

    if-gez v1, :cond_c2

    goto :goto_c6

    .line 104
    :cond_c2
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_e5

    .line 95
    :cond_c6
    :goto_c6
    cmpg-float v1, p2, p3

    if-gez v1, :cond_e5

    .line 96
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 97
    invoke-virtual {v1, v0, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 98
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 99
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p1, v0

    .line 100
    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr p2, v0

    .line 101
    const/4 p3, 0x1

    invoke-virtual {v1, p1, p2, p0, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 102
    nop

    .line 106
    :cond_e5
    :goto_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0xa
        :pswitch_a2
        :pswitch_91
        :pswitch_78
        :pswitch_5c
        :pswitch_3c
        :pswitch_36
        :pswitch_33
    .end packed-switch
.end method
