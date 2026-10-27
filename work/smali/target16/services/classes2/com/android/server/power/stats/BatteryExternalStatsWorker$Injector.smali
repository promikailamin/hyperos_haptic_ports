.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
