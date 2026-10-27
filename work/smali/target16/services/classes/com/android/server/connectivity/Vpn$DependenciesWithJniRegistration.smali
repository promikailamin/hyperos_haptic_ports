.class public final Lcom/android/server/connectivity/Vpn$DependenciesWithJniRegistration;
.super Lcom/android/server/connectivity/Vpn$Dependencies;
.source "Vpn.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 630
    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerVpn()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 628
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$Dependencies;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$DependenciesWithJniRegistration;-><init>()V

    return-void
.end method
