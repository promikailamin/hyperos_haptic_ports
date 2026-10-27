.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final synthetic f$1:Lcom/android/internal/view/inline/IInlineContentCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->lambda$setInlineContentCallback$0$com-android-server-autofill-ui-RemoteInlineSuggestionUi(Lcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method
