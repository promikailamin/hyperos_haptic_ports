.class public Landroid/content/pm/SigningInfoException;
.super Ljava/lang/Exception;
.source "SigningInfoException.java"


# instance fields
.field private final blacklist mCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 32
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iput p1, p0, Landroid/content/pm/SigningInfoException;->mCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getCode()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/content/pm/SigningInfoException;->mCode:I

    return v0
.end method
