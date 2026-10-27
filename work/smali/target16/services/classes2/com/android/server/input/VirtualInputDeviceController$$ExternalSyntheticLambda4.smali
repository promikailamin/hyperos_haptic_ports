.class public final synthetic Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/VirtualInputDeviceController;

.field public final synthetic f$1:Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/VirtualInputDeviceController;

    iput-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    invoke-static {v0, p0}, Lcom/android/server/input/VirtualInputDeviceController;->$r8$lambda$JqW9C_0H5fab50MTa0WtS4P22Z4(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
