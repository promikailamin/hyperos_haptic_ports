.class public final Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;
.super Lcom/android/server/DropBoxManagerInternal;
.source "DropBoxManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    .line 1362
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .registers 4

    .line 1365
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method
