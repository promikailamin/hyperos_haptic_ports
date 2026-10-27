.class public Landroid/companion/datatransfer/continuity/UniversalClipboardManager;
.super Ljava/lang/Object;
.source "UniversalClipboardManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/UniversalClipboardManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Landroid/companion/datatransfer/continuity/UniversalClipboardManager;->mService:Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;

    .line 35
    return-void
.end method
