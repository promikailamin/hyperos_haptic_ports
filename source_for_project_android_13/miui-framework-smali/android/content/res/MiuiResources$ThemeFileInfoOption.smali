.class public Landroid/content/res/MiuiResources$ThemeFileInfoOption;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfoOption"
.end annotation


# instance fields
.field public whitelist inCookie:I

.field public whitelist inDensity:I

.field public whitelist inRequestStream:Z

.field public whitelist inResourcePath:Ljava/lang/String;

.field public whitelist outDensity:I

.field public whitelist outFilterPath:Ljava/lang/String;

.field public whitelist outInputStream:Ljava/io/InputStream;

.field public whitelist outSize:J


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "cookie"    # I
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "requestStream"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 29
    iput-object p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 30
    iput-boolean p3, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/TypedValue;Z)V
    .registers 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "requestStream"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 38
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 39
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_17

    :cond_11
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "requestStream"    # Z

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 25
    return-void
.end method
