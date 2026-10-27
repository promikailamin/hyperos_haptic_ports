.class final Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayInfo"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "parentClient"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 532
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 533
    return-void
.end method
