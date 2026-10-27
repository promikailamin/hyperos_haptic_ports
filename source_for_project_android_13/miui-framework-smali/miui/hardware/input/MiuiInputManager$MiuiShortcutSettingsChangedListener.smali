.class Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;
.super Lmiui/hardware/input/IShortcutSettingsChangedListener$Stub;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiShortcutSettingsChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/input/MiuiInputManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-direct {p0}, Lmiui/hardware/input/IShortcutSettingsChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;-><init>(Lmiui/hardware/input/MiuiInputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 802
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-static {v0, p1, p2}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$monSettingsChanged(Lmiui/hardware/input/MiuiInputManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method
