.class public interface abstract Landroid/content/pm/PackageParserStub;
.super Ljava/lang/Object;
.source "PackageParserStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "PackageParserStub"


# direct methods
.method public static blacklist get()Landroid/content/pm/PackageParserStub;
    .registers 1

    .line 14
    const-class v0, Landroid/content/pm/PackageParserStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParserStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getDexFileSize(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public blacklist init()V
    .registers 3

    .line 18
    const-string v0, "PackageParserStub"

    const-string v1, "Init PackageParserStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public abstract blacklist isWcgWhiteList(Ljava/lang/String;)Z
.end method
