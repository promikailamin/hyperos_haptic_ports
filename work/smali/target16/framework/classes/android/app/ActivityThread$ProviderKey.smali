.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final greylist-max-o authority:Ljava/lang/String;

.field blacklist mHolder:Landroid/app/ContentProviderHolder;

.field final blacklist mLock:Ljava/lang/Object;

.field final greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    .line 561
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    .line 562
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    .line 563
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 567
    instance-of v0, p1, Landroid/app/ActivityThread$ProviderKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 568
    check-cast p1, Landroid/app/ActivityThread$ProviderKey;

    .line 569
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    iget p1, p1, Landroid/app/ActivityThread$ProviderKey;->userId:I

    if-ne v0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 571
    :cond_19
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 576
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method
