class TaskService
  class << self
    # Toggle le statut done/undone d'une tâche
    # @param task [Task] la tâche à basculer
    # @return [Boolean] true si succès, false sinon
    def toggle_status(task)
      task.update(done: !task.done)
    end

    # Marque une tâche comme terminée
    # @param task [Task] la tâche à marquer
    # @return [Boolean] true si succès
    def mark_as_done(task)
      task.update(done: true)
    end

    # Marque une tâche comme non terminée
    # @param task [Task] la tâche à réinitialiser
    # @return [Boolean] true si succès
    def mark_as_pending(task)
      task.update(done: false)
    end

    # Statistiques des tâches
    # @return [Hash] stats des tâches
    def stats
      {
        total: Task.count,
        completed: Task.completed.count,
        pending: Task.pending.count,
        completion_rate: completion_rate
      }
    end

    private

    def completion_rate
      total = Task.count
      return 0 if total.zero?

      ((Task.completed.count.to_f / total) * 100).round(1)
    end
  end
end
