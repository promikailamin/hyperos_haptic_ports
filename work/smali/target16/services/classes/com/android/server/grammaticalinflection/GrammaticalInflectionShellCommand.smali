.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;
.super Landroid/os/ShellCommand;
.source "GrammaticalInflectionShellCommand.java"


# static fields
.field public static final GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;


# instance fields
.field public mAttributionSource:Landroid/content/AttributionSource;

.field public final mBinderService:Landroid/app/IGrammaticalInflectionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 40
    const-string v2, "Not specified (0)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 42
    const-string v2, "Neuter (1)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 43
    const-string v2, "Feminine (2)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 44
    const-string v2, "Masculine (3)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/IGrammaticalInflectionManager;Landroid/content/AttributionSource;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    .line 53
    iput-object p2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_7

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 61
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v0, "set-system-grammatical-gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "get-system-grammatical-gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 65
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->runGetSystemGrammaticalGender()I

    move-result p0

    return p0

    .line 63
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->runSetSystemWideGrammaticalGender()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 3

    .line 74
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 75
    const-string v0, "Grammatical inflection manager (grammatical_inflection) shell commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "  set-system-grammatical-gender [--user <USER_ID>] [--grammaticalGender <GRAMMATICAL_GENDER>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v0, "      Set the system grammatical gender for system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "      --grammaticalGender <GRAMMATICAL_GENDER>: The terms of address the user preferred in system, not specified (0) is used when unspecified."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "                 eg. 0 = not_specified, 1 = neuter, 2 = feminine, 3 = masculine."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "  get-system-grammatical-gender [--user <USER_ID>]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "      Get the system grammatical gender for system."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseGrammaticalGender()I
    .registers 4

    .line 158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 162
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 163
    sget-object v1, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return p0

    :cond_19
    return v0
.end method

.method public final runGetSystemGrammaticalGender()I
    .registers 4

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 132
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 148
    :try_start_a
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v0}, Landroid/app/IGrammaticalInflectionManager;->getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    sget-object v2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_21} :catch_22

    goto :goto_3b

    :catch_22
    move-exception v0

    .line 152
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3b
    const/4 p0, 0x0

    return p0

    .line 136
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 142
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runSetSystemWideGrammaticalGender()I
    .registers 7

    .line 98
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 101
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 122
    :try_start_c
    iget-object v3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    invoke-interface {v3, v2, v0}, Landroid/app/IGrammaticalInflectionManager;->setSystemWideGrammaticalGender(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_2b

    :catch_12
    move-exception v0

    .line 124
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2b
    return v1

    .line 105
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_80

    goto :goto_58

    :sswitch_38
    const-string v4, "--grammaticalGender"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_58

    :cond_41
    const/4 v5, 0x2

    goto :goto_58

    :sswitch_43
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v5, 0x1

    goto :goto_58

    :sswitch_4e
    const-string v4, "-g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_58

    :cond_57
    move v5, v1

    :goto_58
    packed-switch v5, :pswitch_data_8e

    .line 116
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :pswitch_72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 112
    :pswitch_7b
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->parseGrammaticalGender()I

    move-result v2

    goto :goto_6

    :sswitch_data_80
    .sparse-switch
        0x5da -> :sswitch_4e
        0x4f7b216b -> :sswitch_43
        0x7825c8af -> :sswitch_38
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_72
        :pswitch_7b
    .end packed-switch
.end method
