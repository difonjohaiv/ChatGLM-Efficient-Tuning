from pet import get_train_args, run_sft, run_rm, run_ppo


def main():

    model_args, data_args, training_args, finetuning_args, general_args = get_train_args()
    if general_args.stage == "sft":
        print(model_args.model_name_or_path)
        run_sft(model_args, data_args, training_args, finetuning_args)
    elif general_args.stage == "rm":
        run_rm(model_args, data_args, training_args, finetuning_args)
    elif general_args.stage == "ppo":
        run_ppo(model_args, data_args, training_args, finetuning_args)


def _mp_fn(index):
    # For xla_spawn (TPUs)
    main()


if __name__ == "__main__":
    main()
