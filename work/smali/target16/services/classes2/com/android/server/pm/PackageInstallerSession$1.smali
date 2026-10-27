.class public Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .line 927
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 928
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".removed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    .line 929
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".idsig"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    return v0

    .line 930
    :cond_22
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smisAppMetadata(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    .line 931
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/art/ArtManagedInstallFileHelper;->isArtManaged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    return v0

    .line 932
    :cond_34
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->isDigestOrDigestSignatureFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v0

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method
