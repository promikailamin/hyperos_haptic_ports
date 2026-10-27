.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:I

.field public final synthetic f$10:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:Landroid/os/ResultReceiver;

.field public final synthetic f$14:Z

.field public final synthetic f$15:I

.field public final synthetic f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final synthetic f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 17

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$5:I

    iput p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$6:I

    iput-object p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$7:Landroid/view/inputmethod/EditorInfo;

    iput-object p9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput-object p10, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput-object p11, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$10:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    iput p12, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$11:I

    iput p13, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$12:I

    iput-object p14, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$13:Landroid/os/ResultReceiver;

    iput-boolean p15, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$14:Z

    move/from16 p1, p16

    iput p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$15:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 18

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    move-object v2, v1

    iget v1, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$1:I

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    move-object v5, v4

    iget v4, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$4:I

    move-object v6, v5

    iget v5, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$5:I

    move-object v7, v6

    iget v6, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$6:I

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$7:Landroid/view/inputmethod/EditorInfo;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$10:Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    move-object v12, v11

    iget v11, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$11:I

    move-object v13, v12

    iget v12, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$12:I

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$13:Landroid/os/ResultReceiver;

    move-object v15, v14

    iget-boolean v14, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$14:Z

    iget v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;->f$15:I

    move-object/from16 v16, v15

    move v15, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lcom/android/server/inputmethod/ZeroJankProxy;->$r8$lambda$2G_yBnELRu8-3pj86gRAZTQSJBY(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V

    return-void
.end method
