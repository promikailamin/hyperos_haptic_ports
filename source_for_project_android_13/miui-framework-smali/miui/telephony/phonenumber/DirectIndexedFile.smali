.class public Lmiui/telephony/phonenumber/DirectIndexedFile;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$FileHeader;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$DescriptionPair;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$DataItemDescriptor;,
        Lmiui/telephony/phonenumber/DirectIndexedFile$IndexGroupDescriptor;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DensityIndexFile: "


# direct methods
.method protected constructor whitelist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist build(I)Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;
    .registers 3
    .param p0, "dataVersion"    # I

    .line 1501
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Builder;-><init>(ILmiui/telephony/phonenumber/DirectIndexedFile$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist open(Ljava/io/InputStream;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    .registers 3
    .param p0, "inpuStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1517
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;Lmiui/telephony/phonenumber/DirectIndexedFile$Reader-IA;)V

    return-object v0
.end method

.method public static whitelist open(Ljava/lang/String;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    .registers 3
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    new-instance v0, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;Lmiui/telephony/phonenumber/DirectIndexedFile$Reader-IA;)V

    return-object v0
.end method
