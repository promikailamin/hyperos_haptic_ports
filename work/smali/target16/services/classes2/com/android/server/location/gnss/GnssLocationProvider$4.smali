.class public Lcom/android/server/location/gnss/GnssLocationProvider$4;
.super Landroid/database/ContentObserver;
.source "GnssLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V
    .registers 3

    .line 525
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 528
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$mtoggleXtraDaemon(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method
