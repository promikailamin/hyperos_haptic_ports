.class public Lcom/android/server/wm/DisplayPolicy$DecorInsets;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# static fields
.field public static final OVERRIDE_CONFIG_TYPES:I

.field public static final OVERRIDE_DECOR_TYPES:I


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

.field public final mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2040
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    .line 2041
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->OVERRIDE_CONFIG_TYPES:I

    .line 2042
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    .line 2043
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->OVERRIDE_DECOR_TYPES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 2136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2133
    new-array v0, v0, [Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2134
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2137
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2138
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_22

    .line 2139
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    :cond_22
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    const/4 v0, 0x0

    .line 2165
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 2166
    aget-object v1, v1, v0

    .line 2167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method public get(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .registers 6

    .line 2144
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v0, v0, p1

    .line 2145
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fgetmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2146
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)V

    :cond_f
    return-object v0
.end method

.method public invalidate()V
    .registers 5

    .line 2153
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_f

    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 2154
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fputmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V
    .registers 5

    .line 2159
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_15

    .line 2160
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    return-void
.end method
