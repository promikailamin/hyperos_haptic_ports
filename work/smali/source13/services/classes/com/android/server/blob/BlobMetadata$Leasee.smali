.class final Lcom/android/server/blob/BlobMetadata$Leasee;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leasee"
.end annotation


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final descriptionResEntryName:Ljava/lang/String;

.field public final expiryTimeMillis:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "descriptionResId"    # I
    .param p5, "description"    # Ljava/lang/CharSequence;
    .param p6, "expiryTimeMillis"    # J

    .line 828
    invoke-direct {p0, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 829
    nop

    .line 830
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 829
    invoke-static {p1, p2, v0}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 831
    .local v0, "packageResources":Landroid/content/res/Resources;
    invoke-static {v0, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 832
    iput-wide p6, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 833
    if-nez p5, :cond_1b

    .line 834
    invoke-static {v0, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 835
    :cond_1b
    move-object v1, p5

    :goto_1c
    iput-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 836
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "descriptionResEntryName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "expiryTimeMillis"    # J

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 841
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 842
    iput-wide p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 843
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 844
    return-void
.end method

.method static createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;
    .registers 16
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    const-string/jumbo v0, "p"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "u"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 912
    .local v8, "uid":I
    const/4 v1, 0x3

    if-lt p1, v1, :cond_1a

    .line 913
    const-string/jumbo v1, "rn"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .local v1, "descriptionResEntryName":Ljava/lang/String;
    goto :goto_1c

    .line 916
    .end local v1    # "descriptionResEntryName":Ljava/lang/String;
    :cond_1a
    const/4 v1, 0x0

    move-object v9, v1

    .line 918
    .local v9, "descriptionResEntryName":Ljava/lang/String;
    :goto_1c
    const-string v1, "ex"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 920
    .local v10, "expiryTimeMillis":J
    const/4 v1, 0x2

    if-lt p1, v1, :cond_2d

    .line 921
    const-string v1, "d"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .local v1, "description":Ljava/lang/CharSequence;
    goto :goto_2f

    .line 923
    .end local v1    # "description":Ljava/lang/CharSequence;
    :cond_2d
    const/4 v1, 0x0

    move-object v12, v1

    .line 926
    .local v12, "description":Ljava/lang/CharSequence;
    :goto_2f
    new-instance v13, Lcom/android/server/blob/BlobMetadata$Leasee;

    move-object v1, v13

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move-object v5, v12

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V

    return-object v13
.end method

.method private static getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "descriptionResEntryName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 858
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1d

    .line 861
    :cond_a
    invoke-static {p0, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 862
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_11

    .line 863
    return-object v0

    .line 865
    :cond_11
    invoke-static {v1, p1, p2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 867
    .local v2, "resId":I
    if-nez v2, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 859
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method private static getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3
    .param p0, "packageResources"    # Landroid/content/res/Resources;
    .param p1, "descriptionResId"    # I

    .line 873
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p0, :cond_9

    goto :goto_e

    .line 876
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 874
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 890
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    .line 891
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 890
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "desc":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 893
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    :cond_16
    if-nez v0, :cond_1b

    const-string v1, "<none>"

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    return-object v1
.end method

.method private static getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3
    .param p0, "packageResources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 849
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p0, :cond_9

    goto :goto_e

    .line 852
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 850
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fout"    # Landroid/util/IndentingPrintWriter;

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expiryMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method isStillValid()Z
    .registers 5

    .line 880
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "p"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 900
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    const-string/jumbo v1, "u"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 901
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    const-string/jumbo v1, "rn"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 902
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-string v2, "ex"

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 903
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    const-string v1, "d"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 904
    return-void
.end method
