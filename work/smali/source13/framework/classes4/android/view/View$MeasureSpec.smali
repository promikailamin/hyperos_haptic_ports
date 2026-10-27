.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$MeasureSpec$MeasureSpecMode;
    }
.end annotation


# static fields
.field public static final whitelist AT_MOST:I = -0x80000000

.field public static final whitelist EXACTLY:I = 0x40000000

.field private static final greylist-max-o MODE_MASK:I = -0x40000000

.field private static final greylist-max-o MODE_SHIFT:I = 0x1e

.field public static final whitelist UNSPECIFIED:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o adjust(II)I
    .registers 6
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .line 30082
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 30083
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30084
    .local v1, "size":I
    if-nez v0, :cond_10

    .line 30086
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 30088
    :cond_10
    add-int/2addr v1, p1

    .line 30089
    if-gez v1, :cond_44

    .line 30090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeasureSpec.adjust: new size would be negative! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30091
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30090
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30092
    const/4 v1, 0x0

    .line 30094
    :cond_44
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method public static whitelist getMode(I)I
    .registers 2
    .param p0, "measureSpec"    # I

    .line 30068
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist getSize(I)I
    .registers 2
    .param p0, "measureSpec"    # I

    .line 30078
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist makeMeasureSpec(II)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .line 30036
    invoke-static {}, Landroid/view/View;->-$$Nest$sfgetsUseBrokenMakeMeasureSpec()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30037
    add-int v0, p0, p1

    return v0

    .line 30039
    :cond_9
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static greylist makeSafeMeasureSpec(II)I
    .registers 3
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .line 30051
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 30052
    const/4 v0, 0x0

    return v0

    .line 30054
    :cond_8
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "measureSpec"    # I

    .line 30105
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 30106
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30108
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30110
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_17

    .line 30111
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 30112
    :cond_17
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_21

    .line 30113
    const-string v3, "EXACTLY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 30114
    :cond_21
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2b

    .line 30115
    const-string v3, "AT_MOST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 30117
    :cond_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30119
    :goto_34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
