.class public final Landroid/content/res/AssetManagerImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AssetManagerImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManagerImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/content/res/AssetManagerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/content/res/AssetManagerImpl;

    invoke-direct {v0}, Landroid/content/res/AssetManagerImpl;-><init>()V

    sput-object v0, Landroid/content/res/AssetManagerImpl$Provider$SINGLETON;->INSTANCE:Landroid/content/res/AssetManagerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
