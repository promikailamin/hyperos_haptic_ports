.class public final Landroid/os/MiuiBinderTransaction$IActivityManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IActivityManager"
.end annotation


# static fields
.field public static final blacklist ACTIVITYMANAGER_DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field public static final blacklist ADD_TO_ENTRY_STACK_TRANSACTION:I = 0xfffda4

.field public static final blacklist CLEAR_ENTRY_STACK_TRANSACTION:I = 0xfffda3

.field public static final blacklist GET_LAST_RESUMED_ACTIVITY_TRANSACTION:I = 0xfffffc

.field public static final blacklist GET_LAST_SPLIT_ACTIVITY_TRANSACTION:I = 0xfffda5

.field public static final blacklist GET_SPLIT_TASK_INFO_TRANSACTION:I = 0xfffd9f

.field public static final blacklist GET_TOP_SPLIT_ACTIVITY_TRANSACTION:I = 0xfffda0

.field public static final blacklist IS_TOP_SPLIT_ACTIVITY_TRANSACTION:I = 0xfffda1

.field public static final blacklist REMOVE_FROM_ENTRY_STACK_TRANSACTION:I = 0xfffda2

.field public static final blacklist SET_LAST_SPLIT_ACTIVITY_TRANSACTION:I = 0xfffda6

.field public static final blacklist TRANSACT_ID_GET_PACKAGE_HOLD_ON:I = 0xfffffd

.field public static final blacklist TRANSACT_ID_SET_PACKAGE_HOLD_ON:I = 0xfffffe


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 7
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IActivityManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
