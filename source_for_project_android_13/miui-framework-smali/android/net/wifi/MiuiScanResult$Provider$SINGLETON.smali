.class public final Landroid/net/wifi/MiuiScanResult$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiScanResult$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MiuiScanResult$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/net/wifi/MiuiScanResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/net/wifi/MiuiScanResult;

    invoke-direct {v0}, Landroid/net/wifi/MiuiScanResult;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiScanResult$Provider$SINGLETON;->INSTANCE:Landroid/net/wifi/MiuiScanResult;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
