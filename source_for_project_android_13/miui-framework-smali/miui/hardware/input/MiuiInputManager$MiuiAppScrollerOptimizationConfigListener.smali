.class Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;
.super Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener$Stub;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiAppScrollerOptimizationConfigListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/input/MiuiInputManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;)V
    .registers 2

    .line 845
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-direct {p0}, Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;-><init>(Lmiui/hardware/input/MiuiInputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onScrollerOptimizationConfig([Ljava/lang/String;)V
    .registers 3
    .param p1, "configData"    # [Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-static {v0, p1}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$monScrollerOptimizationConfig(Lmiui/hardware/input/MiuiInputManager;[Ljava/lang/String;)V

    .line 851
    return-void
.end method
