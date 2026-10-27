.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method public static synthetic blacklist $r8$lambda$KK3v4A4tlSygNnptkuXfMvNJWUY(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationFailed$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RjvXKSLzq9X7sWGPbX6yjUfbjKA(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XuLNJSZKPD9f2lUIwtu8KYKH9NM(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y3r-VATQnkqye2GuRCPQHGqwsG4(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onError$2(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ctdUWPrSVN4D8B_F3LaNYv7UHMk(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAcquired$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iGVj7X4xvgBUdbN5VHn0TjzjmEc(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onDialogDismissed$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mcjH6kuywFRhujrc-eRX4e2EaYo(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onSystemEvent$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$njKlgu1brpOPWC-xU6JhJHFapKo(Landroid/hardware/biometrics/BiometricPrompt$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAuthenticationSucceeded$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 817
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$3(ILjava/lang/String;)V
    .registers 4

    .line 887
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 888
    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationFailed$1()V
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 833
    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$0(I)V
    .registers 4

    .line 822
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V

    .line 824
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 825
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 826
    return-void
.end method

.method private synthetic blacklist lambda$onDialogDismissed$4(I)V
    .registers 4

    .line 899
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmFallbackOptions(Landroid/hardware/biometrics/BiometricPrompt;)[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 901
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 902
    return-void
.end method

.method private synthetic blacklist lambda$onDialogDismissed$5()V
    .registers 4

    .line 910
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 911
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 912
    return-void
.end method

.method private synthetic blacklist lambda$onDialogDismissed$6()V
    .registers 4

    .line 920
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 922
    return-void
.end method

.method private synthetic blacklist lambda$onError$2(ILjava/lang/String;)V
    .registers 4

    .line 879
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 880
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 881
    return-void
.end method

.method private synthetic blacklist lambda$onSystemEvent$7(I)V
    .registers 3

    .line 933
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    .line 934
    return-void
.end method


# virtual methods
.method public blacklist onAcquired(ILjava/lang/String;)V
    .registers 5

    .line 886
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 889
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .registers 3

    .line 831
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 834
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(I)V
    .registers 4

    .line 821
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public blacklist onDialogDismissed(I)V
    .registers 6

    .line 894
    const/4 v0, 0x0

    const/16 v1, 0xa

    const/16 v2, 0x14

    if-lt p1, v2, :cond_33

    const/16 v3, 0x18

    if-ge p1, v3, :cond_33

    .line 896
    sub-int/2addr p1, v2

    .line 897
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmFallbackOptions(Landroid/hardware/biometrics/BiometricPrompt;)[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_29

    .line 898
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmFallbackOptions(Landroid/hardware/biometrics/BiometricPrompt;)[Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 904
    :cond_29
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 907
    :goto_32
    goto :goto_94

    :cond_33
    const/4 v2, 0x2

    if-ne p1, v2, :cond_59

    .line 908
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 909
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_94

    .line 914
    :cond_4f
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_94

    .line 917
    :cond_59
    const/16 v0, 0x8

    if-ne p1, v0, :cond_76

    .line 918
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 919
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_94

    .line 925
    :cond_76
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPrompt"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_94
    :goto_94
    return-void
.end method

.method public blacklist onError(III)V
    .registers 6

    .line 840
    nop

    .line 841
    sparse-switch p1, :sswitch_data_a2

    const/4 v0, 0x0

    goto :goto_1b

    .line 843
    :sswitch_6
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 844
    goto :goto_1b

    .line 847
    :sswitch_11
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_1b
    if-nez v0, :cond_92

    .line 854
    sparse-switch p2, :sswitch_data_ac

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error, modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " vendorCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BiometricPrompt"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x10401c0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    .line 865
    :sswitch_5a
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x10401bf

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    goto :goto_92

    .line 862
    :sswitch_68
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x10401c1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    goto :goto_92

    .line 859
    :sswitch_76
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x10401c2

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 860
    goto :goto_92

    .line 856
    :sswitch_84
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x10401be

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 857
    nop

    .line 877
    :cond_92
    :goto_92
    nop

    .line 878
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    return-void

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_11
        0x8 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_ac
    .sparse-switch
        0x5 -> :sswitch_84
        0xa -> :sswitch_76
        0xc -> :sswitch_68
        0xe -> :sswitch_5a
    .end sparse-switch
.end method

.method public blacklist onSystemEvent(I)V
    .registers 4

    .line 932
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method
