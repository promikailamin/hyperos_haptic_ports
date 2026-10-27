.class public final Lcom/android/internal/widget/NotificationProgressBar$Point;
.super Ljava/lang/Object;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressBar$Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Point;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    .line 1326
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1336
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1338
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 1340
    :cond_12
    check-cast p1, Lcom/android/internal/widget/NotificationProgressBar$Point;

    .line 1342
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    iget p1, p1, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    .line 1338
    :cond_1d
    :goto_1d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1347
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
