.class public final Landroid/util/MiuiAppSizeCompatModeImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiAppSizeCompatModeImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiAppSizeCompatModeImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/util/MiuiAppSizeCompatModeImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/util/MiuiAppSizeCompatModeImpl;

    invoke-direct {v0}, Landroid/util/MiuiAppSizeCompatModeImpl;-><init>()V

    sput-object v0, Landroid/util/MiuiAppSizeCompatModeImpl$Provider$SINGLETON;->INSTANCE:Landroid/util/MiuiAppSizeCompatModeImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
