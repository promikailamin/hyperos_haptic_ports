.class Lcom/android/server/display/AutomaticBrightnessControllerStub$1;
.super Landroid/util/SparseArray;
.source "AutomaticBrightnessControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessControllerStub;->fillInLuxFromDaemonSensor()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessControllerStub;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessControllerStub;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessControllerStub;

    .line 124
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerStub$1;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerStub;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 126
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerStub$1;->put(ILjava/lang/Object;)V

    .line 127
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerStub$1;->put(ILjava/lang/Object;)V

    .line 128
    return-void
.end method
