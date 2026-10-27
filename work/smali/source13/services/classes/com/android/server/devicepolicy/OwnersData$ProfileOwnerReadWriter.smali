.class Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileOwnerReadWriter"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/OwnersData;I)V
    .registers 3
    .param p2, "userId"    # I

    .line 459
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 460
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 461
    iput p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    .line 462
    return-void
.end method


# virtual methods
.method readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
    .registers 8
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-le p2, v1, :cond_5

    .line 480
    return v0

    .line 482
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_48

    :cond_e
    goto :goto_19

    :pswitch_f
    const-string/jumbo v2, "profile-owner"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v3

    :goto_19
    packed-switch v1, :pswitch_data_4e

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v3

    .line 484
    :pswitch_35
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    nop

    .line 491
    return v0

    :pswitch_data_48
    .packed-switch 0x7fdeed8f
        :pswitch_f
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method

.method shouldWrite()Z
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method writeInner(Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 472
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v0, :cond_18

    .line 473
    const-string/jumbo v1, "profile-owner"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    .line 475
    :cond_18
    return-void
.end method
