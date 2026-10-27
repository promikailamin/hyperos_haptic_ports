.class public Lcom/android/server/pm/DeletePackageHelper$TempUserState;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput p1, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    .line 986
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 987
    iput-boolean p3, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;Z)V

    return-void
.end method
