.class Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isOrganizationOwnedDevice:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "remoteBugreportUri"    # Ljava/lang/String;
    .param p4, "remoteBugreportHash"    # Ljava/lang/String;
    .param p5, "isOrganizationOwnedDevice"    # Z

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 507
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 508
    iput-object p3, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 509
    iput-object p4, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 510
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 511
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    .registers 18
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 535
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "name":Ljava/lang/String;
    const-string v3, "component"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, "componentName":Ljava/lang/String;
    nop

    .line 538
    const-string/jumbo v3, "remoteBugreportUri"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 539
    .local v10, "remoteBugreportUri":Ljava/lang/String;
    nop

    .line 540
    const-string/jumbo v3, "remoteBugreportHash"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 541
    .local v11, "remoteBugreportHash":Ljava/lang/String;
    nop

    .line 542
    const-string v3, "canAccessDeviceIds"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 543
    .local v12, "canAccessDeviceIdsStr":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 544
    .local v13, "canAccessDeviceIds":Z
    nop

    .line 545
    const-string/jumbo v4, "isPoOrganizationOwnedDevice"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 546
    .local v14, "isOrgOwnedDeviceStr":Ljava/lang/String;
    nop

    .line 547
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int v15, v3, v13

    .line 549
    .local v15, "isOrgOwnedDevice":Z
    const-string v3, "DevicePolicyManagerService"

    if-nez v9, :cond_47

    .line 550
    const-string v4, "Owner component not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v1

    .line 553
    :cond_47
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 554
    .local v16, "admin":Landroid/content/ComponentName;
    if-nez v16, :cond_64

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owner component not parsable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-object v1

    .line 559
    :cond_64
    new-instance v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-object v3, v1

    move-object v4, v2

    move-object/from16 v5, v16

    move-object v6, v10

    move-object v7, v11

    move v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOrganizationOwnedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 516
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_e
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1b

    .line 519
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    :cond_1b
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 522
    const-string/jumbo v2, "remoteBugreportUri"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    :cond_25
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 525
    const-string/jumbo v2, "remoteBugreportHash"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    if-eqz v1, :cond_39

    .line 528
    const-string/jumbo v2, "isPoOrganizationOwnedDevice"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    :cond_39
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    return-void
.end method
