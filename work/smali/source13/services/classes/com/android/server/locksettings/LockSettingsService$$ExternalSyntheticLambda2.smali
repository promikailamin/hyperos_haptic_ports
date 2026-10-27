.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->lambda$addWeakEscrowToken$4(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V

    return-void
.end method
