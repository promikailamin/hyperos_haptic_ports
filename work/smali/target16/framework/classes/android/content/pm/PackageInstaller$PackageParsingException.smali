.class public Landroid/content/pm/PackageInstaller$PackageParsingException;
.super Ljava/lang/Exception;
.source "PackageInstaller.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageParsingException"
.end annotation


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 2981
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2982
    iput p1, p0, Landroid/content/pm/PackageInstaller$PackageParsingException;->mErrorCode:I

    .line 2983
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 2986
    iget v0, p0, Landroid/content/pm/PackageInstaller$PackageParsingException;->mErrorCode:I

    return v0
.end method
