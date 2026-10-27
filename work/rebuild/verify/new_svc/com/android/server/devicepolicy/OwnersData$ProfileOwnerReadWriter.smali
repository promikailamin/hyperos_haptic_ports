.class public Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "OwnersData.java"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;I)V
    .registers 3

    .line 588
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    .line 589
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 590
    iput p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    return-void
.end method


# virtual methods
.method public readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    return v1

    .line 611
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo p2, "profile-owner"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 616
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 613
    :cond_29
    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p2, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public shouldWrite()Z
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_18

    .line 602
    const-string/jumbo v0, "profile-owner"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
