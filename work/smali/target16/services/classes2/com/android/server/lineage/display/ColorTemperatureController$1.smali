.class public Lcom/android/server/lineage/display/ColorTemperatureController$1;
.super Ljava/lang/Object;
.source "ColorTemperatureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/ColorTemperatureController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/ColorTemperatureController;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController$1;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController$1;->this$0:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-static {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->-$$Nest$mupdateColorTemperature(Lcom/android/server/lineage/display/ColorTemperatureController;)V

    return-void
.end method
