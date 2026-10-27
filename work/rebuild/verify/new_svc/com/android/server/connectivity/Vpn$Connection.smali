.class public Lcom/android/server/connectivity/Vpn$Connection;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    .line 2277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 2282
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 2287
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method
