.class public Lcom/android/server/pm/PackageInstallerSessionStub;
.super Ljava/lang/Object;
.source "PackageInstallerSessionStub.java"


# static fields
.field private static sInstance:Lcom/android/server/pm/PackageInstallerSessionStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/pm/PackageInstallerSessionStub;

    .line 15
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSessionStub;

    sput-object v0, Lcom/android/server/pm/PackageInstallerSessionStub;->sInstance:Lcom/android/server/pm/PackageInstallerSessionStub;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/PackageInstallerSessionStub;
    .registers 1

    .line 18
    sget-object v0, Lcom/android/server/pm/PackageInstallerSessionStub;->sInstance:Lcom/android/server/pm/PackageInstallerSessionStub;

    return-object v0
.end method


# virtual methods
.method public getParseApkResult(Landroid/content/pm/parsing/result/ParseTypeImpl;Ljava/io/File;Ljava/lang/String;)Landroid/content/pm/parsing/ApkLite;
    .registers 9
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseTypeImpl;
    .param p2, "addedFile"    # Ljava/io/File;
    .param p3, "installSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, p2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 25
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_17

    .line 29
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/ApkLite;

    .line 31
    .local v1, "apk":Landroid/content/pm/parsing/ApkLite;
    return-object v1

    .line 26
    .end local v1    # "apk":Landroid/content/pm/parsing/ApkLite;
    :cond_17
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    .line 27
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
