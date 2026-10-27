.class public final synthetic Lcom/miui/autoui/MIUIAutoUIManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/miui/autoui/MIUIAutoUIManagerImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/miui/autoui/MIUIAutoUIManagerImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/autoui/MIUIAutoUIManagerImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/autoui/MIUIAutoUIManagerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->lambda$init$0$com-miui-autoui-MIUIAutoUIManagerImpl(Ljava/lang/Boolean;)V

    return-void
.end method
