.class public final synthetic Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/HistoricalRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/HistoricalRegistry;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/HistoricalRegistry;

    invoke-static {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->$r8$lambda$iS9rmIeLXW-C5M3c8Vf4WZNLeLI(Lcom/android/server/appop/HistoricalRegistry;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
