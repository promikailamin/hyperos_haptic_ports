.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/am/UserState;

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:I

    iput-object p6, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:Lcom/android/server/am/UserState;

    iput-boolean p7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:Z

    iput p8, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$7:I

    iput p9, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    iget v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:I

    iget-object v5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:Lcom/android/server/am/UserState;

    iget-boolean v6, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:Z

    iget v7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$7:I

    iget v8, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$8:I

    invoke-static/range {v0 .. v8}, Lcom/android/server/am/UserController;->$r8$lambda$Pl0dGffnJ6LafEjR1knWj_fGUIo(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V

    return-void
.end method
